import 'package:flutter/material.dart';
import 'package:template_app/views/partials/_app_bar_custom.dart';
import 'package:template_app/views/partials/_drawer.dart';

class EditePassword extends StatefulWidget {
  @override
  _EditePasswordState createState() => _EditePasswordState();
}

class _EditePasswordState extends State<EditePassword> {
  @override
  Widget build(BuildContext context) {
    double heightCreen = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(26, 55, 123,1),
      //appbar
      appBar: AppBarCustom(title: "Mot de passe",subTitle: "Moise MM",).build(context),
      drawer: DrawerCustom().build(context),

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
                Spacer(),
                //espacement
                SizedBox(height: 15,),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
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
                      SizedBox(height: 15,),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            labelText: "Confirmation du mot de passe",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            )
                        ),
                      ),
                      //espacement
                      SizedBox(height: 20,),
                      //espacement
                      SizedBox(height: 15,),
                      SizedBox(
                        height: 50,
                        child: TextButton(
                          onPressed: () async{
                            //verifie si le formulaire est valide

                          },
                          child: Text("Enregistrer", style: TextStyle(fontSize: 20.0, color:Colors.white),),
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
                Spacer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
