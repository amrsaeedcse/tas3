part of 'sign_up_cubit.dart';

@immutable
sealed class SignUpState {}

final class SignUpSuccess extends SignUpState {}

final class SignUpFailure extends SignUpState {
  String errorMessage;
  SignUpFailure(this.errorMessage);
}

final class SignUpLoading extends SignUpState {}
