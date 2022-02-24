import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cards"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: <Widget>
        [_cardTipo1(),
         SizedBox(height: 30.0),
         _cardTipo2(),
         SizedBox(height: 30.0),
         _cardTipo2()],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(children: <Widget>[
        const ListTile(
          leading: Icon(Icons.photo_album, color: Colors.blue),
          title: Text("Titulo de la Targeta"),
          subtitle: Text("Aqui se puede ver la describcion de la imagen"),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            TextButton(
              child: Text("Cancelar"),
              onPressed: () {},
            ),
            TextButton(
              child: Text("Ok"),
              onPressed: () {},
            )
          ],
        )
      ]),
    );
  }

  Widget _cardTipo2() {
    final card = Container(
      //  clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
                'https://www.nationalgeographic.com.es/medio/2018/02/27/tortuga__1280x720.jpg'),
            placeholder: AssetImage('assets/cargando.gif'),
            height: 250.0,
            fit: BoxFit.cover,
          ),
          Container(padding: EdgeInsets.all(10.0), child: Text("Texto Mucho Texto!!"))
        ],
      ),
    );
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color.fromARGB(99, 0, 255, 145),
              blurRadius: 10.0,
              spreadRadius: 2.0,
              offset: Offset(2.0, 10.0),
            )
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}
