import 'package:flutter/material.dart';
import 'package:template_app/views/auth/login.dart';
import 'package:template_app/views/auth/register.dart';

class PageAuth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double heightCreen = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Center(
                child: Text(
                    "APP",
                  style: TextStyle(color: Colors.white),
                ),
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
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
                  //espacement
                  SizedBox(height: 20,),
                  SizedBox(
                    height: 50,
                    child: TextButton(
                      onPressed: () async{
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));

                      },
                      child: Text("Inscription", style: TextStyle(fontSize: 20.0, color: Color.fromRGBO(26, 55, 123,1),),),
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
