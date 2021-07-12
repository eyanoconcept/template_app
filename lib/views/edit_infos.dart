import 'package:flutter/material.dart';
import 'package:template_app/views/edit_password.dart';
import 'package:template_app/views/edit_profile.dart';
import 'package:template_app/views/folder_manager.dart';
import 'package:template_app/views/widgets_helpers/text_custom.dart';

class EditInfos extends StatefulWidget {
  @override
  _EditInfosState createState() => _EditInfosState();
}

class _EditInfosState extends State<EditInfos> {
  @override
  Widget build(BuildContext context) {
    double heightCreen = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar:  AppBar(
        toolbarHeight: 80,
        iconTheme: IconThemeData(color: Color.fromRGBO(26, 55, 123,1)),
        elevation: 0,
        backgroundColor: Color.fromRGBO(26, 55, 123,1),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FolderManager()));
                },
                icon: Icon(Icons.arrow_back)
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Center(
                child: TextCustom(
                  "Modication des informations personnelles",
                  color: Colors.white,
                )
              ),
              height: heightCreen / 2.0,
              decoration: BoxDecoration(
                color: Color.fromRGBO(26, 55, 123,1),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60)
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 50, left: 50, top: 90),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 50,
                    child: TextButton(
                      onPressed: () async{
                        Navigator.push(context, MaterialPageRoute(builder: (context) => EditeProfile()));
                      },
                      child: Text("Mon profil", style: TextStyle(fontSize: 20.0, color:Colors.white),),
                      //modifier le style du bouton
                      style: TextButton.styleFrom(
                        //arrondir les bordure du bouton
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        backgroundColor: Color.fromRGBO(26, 55, 123,1),
                      ),
                    ),
                  ),
                  //espacement
                  SizedBox(height: 20,),
                  SizedBox(
                    height: 50,
                    child: TextButton(
                      onPressed: () async{
                        Navigator.push(context, MaterialPageRoute(builder: (context) => EditePassword()));
                      },
                      child: Text("Mon mot de passe", style: TextStyle(fontSize: 20.0, color: Color.fromRGBO(26, 55, 123,1),),),
                      //modifier le style du bouton
                      style: TextButton.styleFrom(
                        //arrondir les bordure du bouton
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Color.fromRGBO(26, 55, 123,1),),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        //backgroundColor: Colors.blueAccent
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
