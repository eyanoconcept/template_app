import 'package:flutter/material.dart';
import 'package:template_app/views/partials/_app_bar_custom.dart';
import 'package:template_app/views/partials/_drawer.dart';
import 'package:template_app/views/widgets_helpers/progress_bar.dart';
import 'package:template_app/views/widgets_helpers/text_custom.dart';

import 'files_audios.dart';

class FolderPublic extends StatelessWidget {
  //liste options
  List<Option> options = [
    Option(title: "Audios", icon: Icons.music_note, numberFile: 350, size: 0.5),
    Option(title: "Documents",
        icon: Icons.document_scanner_outlined,
        numberFile: 350,
        size: 0.5),
    Option(title: "Images", icon: Icons.image, numberFile: 350, size: 0.5),
    Option(title: "Videos",
        icon: Icons.video_collection,
        numberFile: 350,
        size: 0.5),

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
        appBar: AppBarCustom(title: "Dossier", subTitle: "Dossier publique",)
            .build(context),
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
              padding: EdgeInsets.only(left: 35, right: 35),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  inputSerach(),
                  SizedBox(height: 30,),
                  gridOption()
                ],
              ),
            ),
          ),
        )
    );
  }

  ///////////////////////////////////////////////

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

  Widget gridOption(){
    return GridView.builder(
      itemCount: options.length,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
      ),
      itemBuilder: (context, index){
        return InkWell(
          onTap: (){
            /////action a faire
            switch (options[index].title){
              case "Audios":
                Navigator.push(context, MaterialPageRoute(builder: (context) => FilesAudios()));
                break;
              case "Documents":
                print("Page Documents");
                break;
              case "Images":
                print("Page Images");
                break;
              case "Videos":
                print("Page Videos");
                break;
            }
          },
          child: Card(
            elevation: 5,
            child: Column(
              children: [
                Spacer(),
                Icon(options[index].icon, size: 65, color: Colors.blueAccent,),
                //espacement
                SizedBox(height: 10,),
                TextCustom(options[index].title),
                TextCustom(options[index].numberFile.toString()+" fichiers", fontWeight: FontWeight.w300,fontSize: 18.0, color: Colors.grey,),
                //espacement
                SizedBox(height: 10,),
                ProgressBar(percent: options[index].size,),
                //espacement
                Spacer(),
              ],
            ),
          ),
        );
      },
    );
  }
}

/*
* classe des options
 */
class Option{
  final String title;
  final IconData icon;
  final int numberFile;
  final double size;

  Option({required this.title,required this.icon,required this.numberFile,required this.size});
}




