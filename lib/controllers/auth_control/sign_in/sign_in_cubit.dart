import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';
import 'package:task/fire_base/fire_base_auth.dart';
import 'package:task/models/user/user_model.dart';
import 'package:task/service_locator.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit() : super(SignInSuccess(null));
  FireBaseFireAuth fireAuth = getIt<FireBaseFireAuth>();

  Future signIn(UserModel user, String pass) async {
    try {
      emit(SignInLoading());
      await fireAuth.signIn(user.email, pass);
      emit(SignInSuccess(user));
    } on FirebaseAuthException catch (e) {
      emit(SignInFailure(e.code.toString()));
    } catch (e) {
      emit(SignInFailure("error"));
    }
  }
}
