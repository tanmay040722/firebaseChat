import 'package:firebasechatblock/prasenntation%20/const.dart';
import 'package:firebasechatblock/prasenntation%20/ui/create_new_group_page.dart';
import 'package:firebasechatblock/prasenntation%20/ui/forgot_password_page.dart';
import 'package:firebasechatblock/prasenntation%20/ui/login_page.dart';
import 'package:firebasechatblock/prasenntation%20/ui/register_page.dart';
import 'package:firebasechatblock/prasenntation%20/ui/single_chat_page.dart';
import 'package:flutter/material.dart';

class OnGeneratedRoute {
  static Route<dynamic> route(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "/":
        {
          return materialPageRoute(widget: const LoginPage());
        }
      case PageConst.forgotPasswordPage:
        {
          return materialPageRoute(widget: const ForgotPasswordPage());
        }
      case PageConst.logInPage:
        {
          return materialPageRoute(widget: const LoginPage());
        }
      case PageConst.registerPage:
        {
          return materialPageRoute(widget: const RegisterPage());
        }
      case PageConst.createNewGroupPage:
        {
          return materialPageRoute(widget: const CreateNewGroupPage());
        }
      case PageConst.singleChatPage:
        {
          return materialPageRoute(widget: const SingleChatView());
        }
      default:
        {
          return materialPageRoute(widget: const ErrorPage());
        }
    }
  }
}

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Error page"),
      ),
      body: const Center(
        child: Text("Not any page available"),
      ),
    );
  }
}

MaterialPageRoute materialPageRoute({required Widget widget}) {
  return MaterialPageRoute(builder: (_) => widget);
}
