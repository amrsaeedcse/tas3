import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'viewcontrol_state.dart';

class ViewControlCubit extends Cubit<ViewControlState> {
  ViewControlCubit() : super(ViewControlList());
  void chooseList() {
    emit(ViewControlList());
  }

  void chooseGrid() {
    emit(ViewControlGrid());
  }
}
