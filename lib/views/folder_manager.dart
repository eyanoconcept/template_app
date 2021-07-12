import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:template_app/views/partials/_app_bar_custom.dart';
import 'package:template_app/views/partials/_drawer.dart';
import 'package:template_app/views/widgets_helpers/progress_bar.dart';
import 'package:template_app/views/widgets_helpers/text_custom.dart';

class FolderManager extends StatefulWidget {
  @override
  _FolderManagerState createState() => _FolderManagerState();
}

class _FolderManagerState extends State<FolderManager> {
  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(

      backgroundColor: Color.fromRGBO(26, 55, 123,1),
      //appbar
      appBar: AppBarCustom(title: "Manager",subTitle: "Accueil",).build(context),
      //
      drawer: DrawerCustom().build(context),
      //
      body: SingleChildScrollView(
        child: Container(
          height: heightScreen / 1.3,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60)
            ),
          ),
          child: Container(
            padding: EdgeInsets.only(left: 25, right: 25),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //
                  SizedBox(height: 20,),
                  //
                  inputSerach(),
                  //
                  SizedBox(height: 20,),
                  //
                  rowContainer(),
                  //
                  SizedBox(height: 15,),
                  //
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(26, 55, 123,1,),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.storage, size: 70,color: Colors.white,),
                        TextCustom('Stockage',color: Colors.white, fontSize: 17.0,),
                        ProgressBar(width: 170.0, lineHeight: 15.0,percent: 0.5,progressColor: Colors.white,text: TextCustom("50 Gb", fontSize: 14.0,),)
                      ],
                    ),
                  ),
                  //
                  SizedBox(height: 15,),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(137, 174, 255,1,),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        //
                        SizedBox(height: 15,),
                          Row(
                            children: [
                              Expanded(child: Text("Audios", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),)),
                              ProgressBar(percent: 0.1, progressColor: Colors.white,lineHeight: 15.0,width: 170.0,text :Text("10 Gb",style: TextStyle(color: Color.fromRGBO(26, 55, 123,1,)),))
                            ],
                          ),
                        //
                        SizedBox(height: 15,),
                        Row(
                          children: [
                            Expanded(child: Text("Vidéos", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),)),
                            ProgressBar(percent: 0.1, progressColor: Colors.white,lineHeight: 15.0,width: 170.0,text :Text("10 Gb",style: TextStyle(color: Color.fromRGBO(26, 55, 123,1,)),))
                          ],
                        ),
                        //
                        SizedBox(height: 15,),
                        Row(
                          children: [
                            Expanded(child: Text("Images", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),)),
                            ProgressBar(percent: 0.1, progressColor: Colors.white,lineHeight: 15.0,width: 170.0,text :Text("10 Gb",style: TextStyle(color: Color.fromRGBO(26, 55, 123,1,)),))
                          ],
                        ),
                        //
                        SizedBox(height: 15,),
                        Row(
                          children: [
                            Expanded(child: Text("Documents", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),)),
                            ProgressBar(percent: 0.1, progressColor: Colors.white,lineHeight: 15.0,width: 170.0,text :Text("10 Gb",style: TextStyle(color: Color.fromRGBO(26, 55, 123,1,)),))
                          ],
                        )
                      ],
                    )
                  ),
                  //
                  SizedBox(height: 15,),
                  //
                  cardFolderPublic(),
                  //
                  SizedBox(height: 15,),
                  //
                  cardFolderPrivate()
                ],
              ),
            ),
          ),
        ),
      ),

    );
  }


  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  /*
  * permet d'afficher le textField pour les recherches
   */
  Widget inputSerach(){
    return TextField(
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
          fillColor: Color.fromRGBO(26, 55, 123,1,),
          filled: true,
          labelText: "Recherche",
          prefixIcon: Icon(
            Icons.search_rounded,
            color: Colors.white,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            //borderSide: BorderSide(color: Colors.white)
          ),
          labelStyle: TextStyle(
              color: Colors.white
          )
      ),
    );
  }

  /*

   */
  Widget rowContainer(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Color.fromRGBO(26, 55, 123,1,),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: TextCustom("Tous", color: Colors.white, fontWeight: FontWeight.w300, fontSize: 17.0,),
        ),
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Color.fromRGBO(26, 55, 123,1,),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Row(
            children: [
              Icon(Icons.folder, color: Colors.white,),
              SizedBox(width: 6,),
              TextCustom("Dossiers", color: Colors.white,fontWeight: FontWeight.w300,fontSize: 17.0)
            ],
          )
        ),
        Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Color.fromRGBO(26, 55, 123,1,),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Row(
              children: [
                Icon(Icons.privacy_tip, color: Colors.white,),
                SizedBox(width: 6,),
                TextCustom("Public", color: Colors.white,fontWeight: FontWeight.w300,fontSize: 17.0)
              ],
            )
        ),
        Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Color.fromRGBO(26, 55, 123,1,),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Row(
              children: [
                Icon(Icons.lock, color: Colors.white,),
                SizedBox(width: 6,),
                TextCustom("Privé", color: Colors.white,fontWeight: FontWeight.w300,fontSize: 17.0)
              ],
            )
        )
      ],
    );
  }

  /*
  *
   */
  Widget cardFolderPublic(){
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
      ),
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Icon(Icons.folder, size: 80, color: Color.fromRGBO(137, 174, 255,1,),),
            //espacement
            SizedBox(width: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextCustom("Dossier public",fontSize: 17.0,),
                //espacement
                SizedBox(height: 6,),
                //
                TextCustom("520 Fichiers",fontSize: 15.0, fontWeight:FontWeight.w300,),
                //espacement
                SizedBox(height: 6,),
                //
                ProgressBar(width: 200.0, lineHeight: 15.0, percent: 0.5,text: TextCustom("50 Gb", fontSize: 14.0, color: Colors.white,),),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget cardFolderPrivate(){
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
      ),
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Icon(Icons.folder, size: 80, color: Color.fromRGBO(137, 174, 255,1,),),
            //espacement
            SizedBox(width: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextCustom("Dossier privé",fontSize: 17.0,),
                //espacement
                SizedBox(height: 6,),
                //
                TextCustom("520 Fichiers",fontSize: 15.0, fontWeight:FontWeight.w300,),
                //espacement
                SizedBox(height: 6,),
                //
                ProgressBar(width: 200.0, lineHeight: 15.0, percent: 0.5,text: TextCustom("50 Gb", fontSize: 14.0, color: Colors.white,),),
              ],
            )
          ],
        ),
      ),
    );
  }


}

