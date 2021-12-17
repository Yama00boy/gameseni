import 'package:flutter/material.dart';

class NextPage extends StatelessWidget{
  NextPage(this.name);
  final String name;


  @override
  Widget build(BuildContext context) {

   return Scaffold(
      appBar: AppBar(
        title: Text('ようこそ'),
      ),

      //ここから修正ポイント

      body: Container(
        color:Colors.amber,
        height:double.infinity,
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name),
            Center(
              child:ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  // ↑< >に型を指定する
                ),
                onPressed: () {
                  Navigator.pop(context, 'お帰りなさい');

                },
                child: Text('戻れ'),
              ),
            ),
          ],
        ),
      )

      //ここまで修正ポイント

    );


  }

}