import 'package:firebasechatblock/prasenntation%20/const.dart';
import 'package:firebasechatblock/prasenntation%20/widgets/theme/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/text_container.dart';


class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  ForgotPasswordPageState createState() => ForgotPasswordPageState();
}

class ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final TextEditingController _emailController = TextEditingController();
  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 32),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 20,),
              Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: greenColor),
                  )),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(
                height: 30,
              ),

              Text("Don't worry! Just fill in your email and ${AppConst.appName} will send you a link to rest your password.",style: TextStyle(fontSize: 14,color: Colors.black.withOpacity(.6),fontStyle: FontStyle.italic),),
              const SizedBox(
                height: 30,
              ),
              TextFieldContainerWidget(
                controller: _emailController,
                surfixIcon: Icons.mail,inputType: TextInputType.emailAddress,
                hintText: 'Email',
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  _submit();
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 44,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: greenColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: const Text(
                    'Send Password Reset Email',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 27,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Remember the account information? ',
                    style:
                    TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pushNamedAndRemoveUntil(context, PageConst.logInPage, (route) => false);
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: greenColor),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void _submit() {
    if (_emailController.text.isEmpty) {
      //toast('Enter your email');
      return;
    }
  }

}
