import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_provider/Provider/counter_provider.dart';

import 'screen/first_screen.dart';

void main() {
  runApp(
    MultiProvider(providers: [
ChangeNotifierProvider(create:(_)=> Counter()),


    ],child: MyApp(),
    
    )
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const FirstScreen(),
    );
  }
}
