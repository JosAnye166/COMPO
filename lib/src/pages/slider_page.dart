import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}
//creacion de slider
class _SliderPageState extends State<SliderPage> {
  double _valSlider = 100.0;
  bool _bloqCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _checkBox(),
            _Switch(),
            Expanded(child: _crearImagen())
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
        activeColor: Colors.indigo[400],
        label: "Tamaño de la imagen",
        value: _valSlider,
        min: 10.0,
        max: 400.0,
        onChanged: (_bloqCheck)
            ? null
            : (valor) {
                setState(() {
                  _valSlider = valor;
                });
              });
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://static.wikia.nocookie.net/kimetsu-no-yaiba/images/8/80/Hinokami_Kagura_-_Dragon_Sun_Halo_Head_Dance.png/revision/latest?cb=20210127190649'),
      width: _valSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _checkBox() {
    return CheckboxListTile(
        title: Text("Bloquear slider"),
        value: _bloqCheck,
        onChanged: (valor) {
          setState(() {
            _bloqCheck = valor!;
          });
        });
  }

  Widget _Switch() {
    return SwitchListTile(
        title: Text("Bloquear slider"),
        value: _bloqCheck,
        onChanged: (valor) {
          setState(() {
            _bloqCheck = valor;
          });
        });
  }
}
