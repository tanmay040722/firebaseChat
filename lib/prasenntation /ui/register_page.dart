import 'package:firebasechatblock/prasenntation%20/const.dart';
import 'package:firebasechatblock/prasenntation%20/widgets/row_text_widget.dart';
import 'package:firebasechatblock/prasenntation%20/widgets/header_text.dart';
import 'package:firebasechatblock/prasenntation%20/widgets/password_container.dart';
import 'package:firebasechatblock/prasenntation%20/widgets/submitButton.dart';
import 'package:firebasechatblock/prasenntation%20/widgets/text_container.dart';
import 'package:firebasechatblock/prasenntation%20/widgets/theme/style.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final cPasswordController = TextEditingController();
  final dOBController = TextEditingController();
  final genderController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    emailController.dispose();
    usernameController.dispose();
    genderController.dispose();
    cPasswordController.dispose();
    passwordController.dispose();
    dOBController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 32),
          child: Column(
            children: [
              const HeaderText(title: 'Registration'),
              const SizedBox(
                height: 10,
              ),
              _profileView(),
              const SizedBox(
                height: 10,
              ),
              TextFieldContainerWidget(
                hintText: 'username',
                inputType: TextInputType.text,
                icon: Icons.person,
                controller: usernameController,
              ),
              const SizedBox(
                height: 10,
              ),
              TextFieldContainerWidget(
                hintText: 'Email',
                inputType: TextInputType.text,
                icon: Icons.person,
                controller: emailController,
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                indent: 120,
                endIndent: 120,
                thickness: 2,
              ),
              const SizedBox(
                height: 10,
              ),
              PasswordContainerWidget(
                hintText: 'Password',
                inputType: TextInputType.text,
                prefixIcon: Icons.lock_outline,
                controller: passwordController,
              ),
              const SizedBox(
                height: 10,
              ),
              PasswordContainerWidget(
                hintText: 'Confirm Password',
                inputType: TextInputType.text,
                prefixIcon: Icons.lock_outline,
                controller: cPasswordController,
              ),
              const SizedBox(
                height: 10,
              ),
              TextFieldContainerWidget(
                hintText: 'D.O.B',
                inputType: TextInputType.datetime,
                surfixIcon: Icons.arrow_drop_down,
                controller: dOBController,
              ),
              const SizedBox(
                height: 10,
              ),
              TextFieldContainerWidget(
                hintText: 'Gender',
                inputType: TextInputType.text,
                surfixIcon: Icons.arrow_drop_down,
                controller: genderController,
              ),
              const SizedBox(
                height: 10,
              ),
              SubmitButtonWidget(
                onTap: () {},
                title: 'Register',
              ),
              const SizedBox(
                height: 20,
              ),
              RowTextWidget(
                onTap: () {
                  Navigator.pushNamed(context, PageConst.logInPage);
                },
                text1: 'Do you have already an account?',
                text2: 'Login',
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              const SizedBox(
                height: 10,
              ),
              _rowData(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _rowData() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'By clicking register, you agree to the ',
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.w700, color: colorC1C1C1),
        ),
        Text(
          'Privacy Policy',
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.w700, color: greenColor),
        ),
      ],
    );
  }

  Widget _profileView() {
    return Column(
      children: [
        Container(
          height: 62,
          width: 62,
          decoration: BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
          child: Image.asset('assets/profile_default.png'),
        ),
        const SizedBox(
          height: 12,
        ),
        const Text(
          'Add Profile Photo',
          style: TextStyle(color: Colors.green),
        )
      ],
    );
  }
}
