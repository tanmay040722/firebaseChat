import 'package:firebasechatblock/prasenntation%20/ui/chat_page.dart';
import 'package:firebasechatblock/prasenntation%20/ui/home_page.dart';
import 'package:firebasechatblock/prasenntation%20/ui/login_page.dart';
import 'package:firebasechatblock/routes/on_generated_route.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
void main() async{
  runApp(const MyApp());


// ...

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'Group Chat',
      theme: ThemeData(primarySwatch: Colors.green),
      initialRoute: "/",
      onGenerateRoute: OnGeneratedRoute.route,
      routes: {
        "/" : (context){
          return HomePageView() ;
        }
      },
    );
  }
}

