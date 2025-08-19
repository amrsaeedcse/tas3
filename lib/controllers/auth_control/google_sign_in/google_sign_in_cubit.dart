import 'package:bloc/bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:meta/meta.dart';
import 'package:task/fire_base/fire_base_auth.dart';
import 'package:task/models/user/user_model.dart';
import 'package:task/service_locator.dart';

part 'google_sign_in_state.dart';

class GoogleSignInCubit extends Cubit<GoogleSignInState> {
  GoogleSignInCubit() : super(GoogleSignInSuccess());
  FireBaseFireAuth fireAuth = getIt<FireBaseFireAuth>();

  Future signInWithGoogle() async {
    try {
      emit(GoogleSignInLoading());
      await fireAuth.signInGoogle();
      emit(GoogleSignInSuccess());
    } on GoogleSignInException catch (e) {
      emit(GoogleSignInFailure(e.code.toString()));
    } catch (e) {
      emit(GoogleSignInFailure("error"));
    }
  }
}
