import 'package:flutter/material.dart';
import 'package:template_app/views/auth/login.dart';
import 'package:template_app/views/auth/page_auth.dart';
import 'package:template_app/views/auth/register.dart';
import 'package:template_app/views/edit_infos.dart';
import 'package:template_app/views/edit_password.dart';
import 'package:template_app/views/edit_profile.dart';
import 'package:template_app/views/files_audios.dart';
import 'package:template_app/views/folder_manager.dart';
import 'package:template_app/views/folder_private.dart';
import 'package:template_app/views/folder_public.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PageAuth(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}


class RouteGenarator{

  static Route<dynamic>? generateRoute(RouteSettings settings){
    switch( settings.name){
      case "/" :
        return MaterialPageRoute(builder: (BuildContext context) => FolderManager());
        break;
      case "/page_auth" :
        return MaterialPageRoute(builder: (BuildContext context) => PageAuth());
        break;
      case "/login" :
        return MaterialPageRoute(builder: (BuildContext context) => Login());
        break;
      case "/register" :
        return MaterialPageRoute(builder: (BuildContext context) => Register());
      case "/folder_public" :
        return MaterialPageRoute(builder: (BuildContext context) => FolderPublic());
        break;
      case "/folder_private" :
        return MaterialPageRoute(builder: (BuildContext context) => FolderPrivate());
        break;
      case "/file_audios" :
        return MaterialPageRoute(builder: (BuildContext context) => FilesAudios());
        break;
      case "/edit_infos" :
        return MaterialPageRoute(builder: (BuildContext context) => EditInfos());
        break;
      case "/edit_profile" :
        return MaterialPageRoute(builder: (BuildContext context) => EditeProfile());
        break;
      case "/edit_password" :
        return MaterialPageRoute(builder: (BuildContext context) => EditePassword());
        break;
    }
  }
}


