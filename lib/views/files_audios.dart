import 'package:flutter/material.dart';
import 'package:template_app/views/partials/_app_bar_custom.dart';
import 'package:template_app/views/partials/_drawer.dart';
import 'package:template_app/views/widgets_helpers/text_custom.dart';

class FilesAudios extends StatefulWidget {
  @override
  _FilesAudiosState createState() => _FilesAudiosState();
}

class _FilesAudiosState extends State<FilesAudios> {
  
  List<Audio> audios = [
    Audio(title: "Alert", size: "10 Mb", date: "12/03/2021", extension: ".mp4"),
    Audio(title: "Alert", size: "10 Mb", date: "12/03/2021", extension: ".mp4"),
    Audio(title: "Alert", size: "10 Mb", date: "12/03/2021", extension: ".mp4"),
    Audio(title: "Alert", size: "10 Mb", date: "12/03/2021", extension: ".mp4"),
    Audio(title: "Alert", size: "10 Mb", date: "12/03/2021", extension: ".mp4"),
    Audio(title: "Alert", size: "10 Mb", date: "12/03/2021", extension: ".mp4"),
    Audio(title: "Alert", size: "10 Mb", date: "12/03/2021", extension: ".mp4"),
    Audio(title: "Alert", size: "10 Mb", date: "12/03/2021", extension: ".mp4"),
    Audio(title: "Alert", size: "10 Mb", date: "12/03/2021", extension: ".mp4"),
    Audio(title: "Alert", size: "10 Mb", date: "12/03/2021", extension: ".mp4"),
    Audio(title: "Alert", size: "10 Mb", date: "12/03/2021", extension: ".mp4"),
    Audio(title: "Alert", size: "10 Mb", date: "12/03/2021", extension: ".mp4"),
  ];
  
  @override
  Widget build(BuildContext context) {
    double heightCreen = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(

        backgroundColor: Color.fromRGBO(26, 55, 123, 1),
        //appbar
        appBar: AppBarCustom(title: "Mes Fichiers", subTitle: "Audios",)
            .build(context),
        //
        drawer: DrawerCustom().build(context),
        ///
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
              padding: EdgeInsets.only(left: 35, right: 35),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  inputSerach(),
                  SizedBox(height: 30,),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: audios.length,
                        itemBuilder: (context, index){
                        Audio audio = audios[index];
                          return Card(
                            elevation: 3,
                            child: Container(
                              padding: EdgeInsets.all(15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleAvatar(backgroundColor: Color.fromRGBO(26, 55, 123, 1),),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      TextCustom(audio.title,fontSize: 18.0,),
                                      TextCustom(audio.size, fontWeight: FontWeight.w300, fontSize: 15.0,)
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      TextCustom(audio.extension, fontWeight: FontWeight.w300, fontSize: 15.0,),
                                      TextCustom(audio.date, fontWeight: FontWeight.w300, fontSize: 15.0,)
                                    ],
                                  ),
                                  PopupMenuButton(
                                      itemBuilder: (context){
                                        return [
                                          PopupMenuItem(child: Text("Deplacer")),
                                          PopupMenuItem(child: Text("Modifier")),
                                          PopupMenuItem(child: Text("Supprimer"))
                                        ];
                                      }
                                  )
                                ],
                              ),
                            ),
                          );
                        }
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(26, 55, 123,1),
        onPressed: (){

        },
        child: Icon(Icons.add,),
      ),
    );
  }

  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  /*
  * permet d'afficher le textField pour les recherches
   */
  Widget inputSerach(){
    return TextField(
      onSubmitted: (String val){

      },
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
}



class Audio{
   String title;
   String size;
   String extension;
   String date;
   
   Audio({required this.title, required this.size, required this.date, required this.extension});

}
