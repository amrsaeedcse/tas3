import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';
import 'package:task/fire_base/fire_base_auth.dart';
import 'package:task/fire_base/fire_base_fire_store.dart';
import 'package:task/models/user/user_model.dart';

import '../../../service_locator.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpSuccess());
  FireBaseFireAuth fireAuth = getIt<FireBaseFireAuth>();
  Future signUp(UserModel userModel, String pass) async {
    try {
      emit(SignUpLoading());
      await fireAuth.signUp(userModel, pass);
      emit(SignUpSuccess());
    } on FirebaseAuthException catch (e) {
      emit(SignUpFailure(e.message.toString()));
    } catch (e) {
      emit(SignUpFailure("error"));
    }
  }
}
