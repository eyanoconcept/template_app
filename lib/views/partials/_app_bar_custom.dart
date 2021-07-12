import 'package:flutter/material.dart';
import 'package:template_app/views/widgets_helpers/text_custom.dart';


class AppBarCustom extends StatelessWidget {
  final String title;
  final String? subTitle;

  AppBarCustom({required this.title, this.subTitle = ""});


  AppBar build(BuildContext context) {
    return AppBar(
      toolbarHeight: 90,
      iconTheme: IconThemeData(color: Color.fromRGBO(26, 55, 123,1)),
      elevation: 0,
      backgroundColor: Colors.white,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextCustom(this.title),
          TextCustom(this.subTitle!, fontSize: 16.0, fontWeight: FontWeight.w300,)
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.add_alert_rounded,
              size: 40,
            ),
          ),
        )
      ],
    );
  }
}
