import 'package:flutter/material.dart';

import 'package:contador/src/pages/home_pages.dart';
import 'package:contador/src/pages/contador_pages.dart';

class MyApp extends StatelessWidget{
  
  @override
  Widget build(context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        //child: HomePage()
        child: ContadorPage(),
      ),
      
    );
  }

}