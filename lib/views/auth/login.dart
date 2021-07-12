import 'package:flutter/material.dart';
import 'package:template_app/views/auth/page_auth.dart';
import 'package:template_app/views/folder_manager.dart';
import 'package:template_app/views/widgets_helpers/text_custom.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double heightCreen = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(26, 55, 123,1),
      appBar: AppBar(
        toolbarHeight: 80,
        iconTheme: IconThemeData(color: Color.fromRGBO(26, 55, 123,1)),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: CircleAvatar(
            backgroundColor: Color.fromRGBO(26, 55, 123,1),
            child: IconButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PageAuth()));
                },
                icon: Icon(Icons.arrow_back)
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Container(
            height: heightCreen / 1.3,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60)
              ),
            ),
            child: Container(
              padding: EdgeInsets.only(right: 30, left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                     Expanded(
                       child: Center(
                           child: TextCustom("Se connecter", fontWeight: FontWeight.normal, fontSize: 25.0,)
                        ),
                     ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email),
                              labelText: "E-mail",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              )
                          ),
                        ),
                        //espacement
                        SizedBox(height: 20,),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              labelText: "Mot de passe",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              )
                          ),
                        ),
                        //espacement
                        SizedBox(height: 20,),
                        SizedBox(
                          height: 50,
                          child: TextButton(
                            onPressed: () async{
                              Navigator.push(context, MaterialPageRoute(builder: (context) => FolderManager()));

                            },
                            child: Text("Connexion", style: TextStyle(fontSize: 20.0, color:Colors.white),),
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
                      ],
                    ),
                  ),
                  SizedBox(height: 60,),
                ],
              ),
            ),
          ),
      ),
    );
  }
}
