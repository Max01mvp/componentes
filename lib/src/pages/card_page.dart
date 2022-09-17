import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
        _cardTipo1(), 
        SizedBox(height: 30.0), 
        _cardTipo2(),
        SizedBox(height: 30.0),
        _cardTipo1(), 
        SizedBox(height: 30.0), 
        _cardTipo2(),
        SizedBox(height: 30.0), 
        _cardTipo1(), 
        SizedBox(height: 30.0), 
        _cardTipo2(),
        SizedBox(height: 30.0),  
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text('Bip bop hay que destruirlos a todos'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                child: Text('Cancelar'),
                onPressed: () {},
              ),
              TextButton(
                child: Text('Ok'),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Container(
      //clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
                'https://img.freepik.com/free-vector/nature-scene-with-river-hills-forest-mountain-landscape-flat-cartoon-style-illustration_1150-37326.jpg?w=2000'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),

          //Image(
          //  image: NetworkImage('https://img.freepik.com/free-vector/nature-scene-with-river-hills-forest-mountain-landscape-flat-cartoon-style-illustration_1150-37326.jpg?w=2000'),
          //  ),

          Container(
              padding: EdgeInsets.all(10.0),
              child: Text('Vale la pena, se logra!'))
        ],
      ),
    );


    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white, 
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 191, 230, 248),
              blurRadius: 10.0,
              spreadRadius: 2.0,
              offset: Offset(2.0, 5.0)
            )
          ]// color: Color.fromARGB(255, 98, 198, 245)
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}
