import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:template_app/views/auth/page_auth.dart';
import 'package:template_app/views/edit_infos.dart';
import 'package:template_app/views/folder_manager.dart';
import 'package:template_app/views/folder_private.dart';
import 'package:template_app/views/folder_public.dart';
import 'package:template_app/views/widgets_helpers/text_custom.dart';

class DrawerCustom extends StatelessWidget {

  List<Item> items = [
    Item(title: "Accueil", icon: Icons.home),
    Item(title: "Dossiers publique", icon: Icons.privacy_tip),
    Item(title: "Dossiers privé", icon: Icons.lock),
    Item(title: "Audios", icon: Icons.audiotrack),
    Item(title: "Videos", icon: Icons.video_collection),
    Item(title: "Images", icon: Icons.image),
    Item(title: "Documents", icon: Icons.document_scanner_outlined),
    Item(title: "Déconnexion", icon: Icons.logout),
  ];

  @override
  Drawer build(BuildContext context) {
    return Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Color.fromRGBO(26, 55, 123,1),
              child: DrawerHeader(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        maxRadius: 40.0,
                        backgroundColor: Color.fromRGBO(26, 55, 123,1),
                        backgroundImage: AssetImage("images/profile.jpeg"),
                      ),
                      //espacement
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextCustom("Moise MM", color: Colors.white,fontSize: 17.0,),
                                TextCustom("Exemple@gmail.com", color: Colors.grey, fontSize: 15.0,),
                              ],
                            ),
                          ),
                          IconButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => EditInfos()));
                              },
                              icon: Icon(Icons.edit, color: Colors.white,)
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ),
            ),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  //nombre d'item
                  itemCount: items.length,
                  itemBuilder: (context,index){
                    Item item = items[index];
                    return Column(
                      children: [
                        ListTile(
                          title: Text(item.title!, style: TextStyle(fontSize: 17),),
                          leading: Icon(item.icon),
                          onTap: (){
                            switch (item.title){
                              case "Accueil" :
                                Navigator.push(context, MaterialPageRoute(builder: (context) => FolderManager()));
                                break;
                              case "Dossiers privé" :
                                Navigator.push(context, MaterialPageRoute(builder: (context) => FolderPrivate()));
                                break;
                              case "Dossiers publique" :
                                Navigator.push(context, MaterialPageRoute(builder: (context) => FolderPublic()));
                                break;
                              case "Déconnexion" :
                                Navigator.push(context, MaterialPageRoute(builder: (context) => PageAuth()));
                                break;
                            }
                          },
                        ),
                        Divider(thickness: 2,)
                      ],
                    );
                  }
              ),
            ),
          ],
        )
    );
  }
}

class Item{
  String? title;
  IconData? icon;

  Item({this.title, this.icon});
}