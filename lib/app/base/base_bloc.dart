import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:dio/dio.dart';
import 'package:estudos/app/shared/components/native_dialog_widget.dart';
import 'package:get/get.dart';
import 'package:rxdart/rxdart.dart';

abstract class BaseBloc extends Disposable {
  final loaderIsVisible = BehaviorSubject<bool>();

  Stream<bool> get outLoader => loaderIsVisible.stream;
  executeProcessAsync(Function func) async {
    try {
      loaderIsVisible.sink.add(true);
      await func.call();
    } on DioError catch (dioError) {
      await Get.dialog(NativeDialogAlertWidget(
          content: dioError.response.data['message'].toString()));
    } catch (ex) {
      await Get.dialog(NativeDialogAlertWidget(content: ex.toString()));
    } finally {
      loaderIsVisible.sink.add(false);
    }
  }

  @override
  void dispose() {
    loaderIsVisible.close();
  }
}
