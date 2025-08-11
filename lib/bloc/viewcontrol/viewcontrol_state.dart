part of 'viewcontrol_cubit.dart';

@immutable
sealed class ViewControlState {}

final class ViewControlGrid extends ViewControlState {}

final class ViewControlList extends ViewControlState {}
