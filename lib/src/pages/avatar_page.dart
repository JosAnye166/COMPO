import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Esta es la pagina de avatar "),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://gcdn.lanetaneta.com/wp-content/uploads/2021/08/Halo-el-jefe-maestro-del-programa-de-television-cambia-el-780x470.jpg'),
              radius: 25.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text("JS"),
              backgroundColor: Color.fromARGB(211, 51, 82, 39),
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://www.elheraldodechiapas.com.mx/gossip/t1vzie-mc/alternates/LANDSCAPE_400/MC'),
          placeholder: AssetImage('assets/cargando.gif'),
        ),
      ),
    );
  }
}
