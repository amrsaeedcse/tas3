part of 'sign_in_cubit.dart';

@immutable
sealed class SignInState {}

final class SignInLoading extends SignInState {}

final class SignInFailure extends SignInState {
  String errorMessage;
  SignInFailure(this.errorMessage);
}

final class SignInSuccess extends SignInState {
  UserModel? currUser;
  SignInSuccess(this.currUser);
}
