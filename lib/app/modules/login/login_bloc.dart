import 'package:estudos/app/base/base_bloc_button.dart';
import 'package:estudos/app/modules/feed/feed_module.dart';
import 'package:estudos/app/modules/login/repository/login_respository.dart';
import 'package:estudos/app/shared/helper/navigator_helper.dart';
import 'package:estudos/app/shared/helper/stream_validator_helper.dart';
import 'package:rxdart/rxdart.dart';

class LoginBloc extends BaseBlocButton with StreamValidatorHelper {
  LoginRepository repository = LoginRepository();
  BehaviorSubject<String> emailController = BehaviorSubject<String>();

  Stream<String> get outEmail =>
      emailController.stream.transform(validateEmailWithRegex);

  Function(String) get changeEmail => emailController.sink.add;
  BehaviorSubject<String> passwordController = BehaviorSubject<String>();

  Stream<String> get outPassword =>
      passwordController.stream.transform(validatePassword);

  Function(String) get changePassword => passwordController.sink.add;

  Stream<bool> get outSubmitValid =>
      Rx.combineLatest2(outEmail, outPassword, (a, b) => true);

  login() async {
    final data = {
      "email": emailController.value.toString(),
      "password": passwordController.value.toString(),
    };
    await executeProcessAsync(() => repository.login(data).then((response) {
          if (response.statusCode == 200) NavigatorHelper.to(FeedModule());
        }));
  }

  @override
  void dispose() {
    super.dispose();
    emailController.close();
    passwordController.close();
  }
}
