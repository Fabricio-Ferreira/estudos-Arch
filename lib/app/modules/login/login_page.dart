import 'package:estudos/app/app_module.dart';
import 'package:estudos/app/modules/login/login_bloc.dart';
import 'package:estudos/app/shared/components/custom_button_widget.dart';
import 'package:estudos/app/shared/components/custom_text_form_field_widget.dart';
import 'package:estudos/app/shared/components/loader_widget.dart';
import 'package:estudos/app/shared/styles/custom_color.dart';
import 'package:estudos/app/shared/styles/custom_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  final String title;

  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final bloc = AppModule.to.getBloc<LoginBloc>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
        stream: bloc.outLoader,
        builder: (context, snapshot) {
          return Scaffold(
            appBar: AppBar(
              title: Text(widget.title),
            ),
            body: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      StreamBuilder<String>(
                          stream: bloc.outEmail,
                          builder: (context, snapshot) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: CustomTextField(
                                style: CustomTextStyles.linkBlackBold16,
                                label: 'E-mail',
                                labelStyle:
                                    CustomTextStyles.linkColorBaseNormal16,
                                hint: 'Informe o seu e-mail',
                                hintStyle:
                                    CustomTextStyles.smallTextMono3Normal12,
                                keyboardType: TextInputType.emailAddress,
                                onChanged: bloc.changeEmail,
                                error:
                                    snapshot.hasError ? snapshot.error : null,
                              ),
                            );
                          }),
                      StreamBuilder<String>(
                          stream: bloc.outPassword,
                          builder: (context, snapshot) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: CustomTextField(
                                style: CustomTextStyles.linkBlackBold16,
                                label: 'Senha',
                                labelStyle:
                                    CustomTextStyles.linkColorBaseNormal16,
                                hint: 'Informe sua senha',
                                hintStyle:
                                    CustomTextStyles.smallTextMono3Normal12,
                                keyboardType: TextInputType.text,
                                onChanged: bloc.changePassword,
                                error:
                                    snapshot.hasError ? snapshot.error : null,
                              ),
                            );
                          }),
                      StreamBuilder<bool>(
                          stream: bloc.outSubmitValid,
                          builder: (context, snapshot) {
                            return CustomButtonWidget(
                              title: 'LOGIN',
                              textStyle: CustomTextStyles.linkWhiteBold16,
                              width: Get.width,
                              height: 50,
                              color: CustomColors.COLOR_CUSTOM_ORANGE,
                              loaderColor: CustomColors.COLOR_WHITE,
                              borderColor: CustomColors.COLOR_WHITE,
                              radius: 30,
                              onPressed: bloc.disabledButton(
                                  snapshot.data, () => bloc.login()),
                            );
                          })
                    ],
                  ),
                ),
                Visibility(
                  child: Loader(),
                  visible: snapshot.data == true,
                )
              ],
            ),
          );
        });
  }
}
