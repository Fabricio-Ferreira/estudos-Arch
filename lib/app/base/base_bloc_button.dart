import 'package:estudos/app/base/base_bloc.dart';

class BaseBlocButton extends BaseBloc {
  disabledButton(snapshot, Function func) {
    return snapshot == true ? func : null;
  }
}
