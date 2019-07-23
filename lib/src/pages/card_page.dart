import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cards')),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          _typeCard1(),
          SizedBox(
            height: 30,
          ),
          _typeCard2(),
        ],
      ),
    );
  }

  Widget _typeCard1() {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Soy el titulo de la tarjeta'),
            subtitle: Text('stándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recien'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {

                },
              ),
              FlatButton(
                child: Text('OK'),
                onPressed: () {

                },
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _typeCard2() {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        children: <Widget>[
          FadeInImage(
            image:  NetworkImage('https://cdn.pixabay.com/photo/2017/02/01/22/02/mountain-landscape-2031539_960_720.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            // fadeInDuration: Duration(microseconds: 200),
            // height: 300,
            fit: BoxFit.cover,
          ),
          // Image(
          //   image: AssetImage('assets/jar-loading.gif'),
          // ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('algo para rellenar')
          )
        ],
      ),
    );
  }
}
