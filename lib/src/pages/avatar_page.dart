import 'package:flutter/material.dart';


class AvatarPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
          actions: [

            Container(
              padding: EdgeInsets.all(5.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://www.fireemblemwod.com/fe16/rostro/Edelgard_01.png'),
                radius: 30.0,
              ),
            ),

            Container(
              margin: EdgeInsets.only(right: 10.0),
              child: CircleAvatar(
                child: Text('EH'),
                backgroundColor: Colors.red,
              ),
            )
          ],
      ),
        body: Center(
          child: FadeInImage(
            image:NetworkImage('https://www.nintenderos.com/wp-content/uploads/2022/02/FEWThreeHopes_scrn_07.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration (milliseconds: 200),
        ),
    ),
  );

  }
}