import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(onPressed:(){
                Get.bottomSheet(
                  Container(
                    child: Wrap(
                      children: [
                        ListTile(
                          leading: Icon(Icons.wb_sunny_outlined),
                          title: Text('Dark Theme'),
                          onTap: ()=>{
                            Get.changeTheme(ThemeData.dark())
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.wb_sunny),
                          title: Text('Light Theme'),
                          onTap: ()=>{Get.changeTheme(ThemeData.light())},
                        ),
                      ],
                    ),
                  ),
                 barrierColor: Colors.greenAccent.shade50,
                  backgroundColor: Colors.black38,
                  isDismissible: true,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(18.0),
                     side: BorderSide(
                       color: Colors.white,
                       style: BorderStyle.solid,
                       width: 2.0,
                     )
                   ),
                  enableDrag: true,
                );
              },
              child: Text('Show'),),
            ],
          ),
        ),
      ),
    );
  }
}

