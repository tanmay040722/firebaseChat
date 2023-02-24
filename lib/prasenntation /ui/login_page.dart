import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:firebasechatblock/prasenntation%20/const.dart';
import 'package:firebasechatblock/prasenntation%20/widgets/row_text_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/header_text.dart';
import '../widgets/password_container.dart';
import '../widgets/submitButton.dart';
import '../widgets/text_container.dart';
import '../widgets/theme/style.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 32),
          child: Column(
            children: <Widget>[
              const HeaderText(title: 'LogIn'),
              TextFieldContainerWidget(
                controller: emailController,
                icon: Icons.email,
                inputType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 10,
              ),
              PasswordContainerWidget(
                controller: passwordController,
                prefixIcon: Icons.lock,
                suffixIcon: Icons.remove_red_eye,
              ),
              _forgotpassword(),
              const SizedBox(
                height: 20,
              ),
              SubmitButtonWidget(
                title: 'LogIn',
                onTap: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              RowTextWidget(
                  onTap: () {
                    Navigator.pushNamed(context, PageConst.registerPage);
                  },
                  text1: "don't have an Account", text2: 'Register'),
              const SizedBox(
                height: 20,
              ),
              _googleButton()
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Widget _forgotpassword() {
    return Align(
      alignment: Alignment.topRight,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, PageConst.forgotPasswordPage);
        },
        child: Text(
          'Forgot password?',
          style: TextStyle(
              color: greenColor, fontSize: 16, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }


  Widget _googleButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            //BlocProvider.of<CredentialCubit>(context).googleAuthSubmit();
          },
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.2),
                    offset: Offset(1.0, 1.0),
                    spreadRadius: 1,
                    blurRadius: 1,
                  )
                ]),
            child: const Icon(
              EvaIcons.google,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
