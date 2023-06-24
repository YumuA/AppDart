//mport 'package:gitpaste/view/root.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _LoginState();
}

class _LoginState extends State<home> {
  //final TextEditingController _namectl = TextEditingController();
  //final TextEditingController _passctl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      alignment: Alignment.center,
      child: const Text('Home'),
    );
  }
  //Widget build(BuildContext context) {
    //return Scaffold(
      //appBar: AppBar(
        //title: const Text("Pets Barber"),
        //centerTitle: true,
      //),
      //body: Column(
        //children: <Widget>[
          //Padding(
          //  padding: const EdgeInsets.all(12.0),
          //  child: TextFormField(
          //      controller: _namectl,
          //      decoration: const InputDecoration(
          //          border: UnderlineInputBorder(),
          //          labelText: 'Enter your Username')),
          //),
          ///*Padding(
          //  padding: const EdgeInsets.all(12.0),
          //  child: TextFormField(
          //      controller: _passctl,
          //      decoration: const InputDecoration(
          //          border: UnderlineInputBorder(),
          //          labelText: 'Enter your Password')),
          //),
          //TextButton(
          //    style: TextButton.styleFrom(
          //        foregroundColor: Colors.white,
          //        backgroundColor: Colors.blueGrey),
          //    onPressed: () => Navigator.of(context).push(MaterialPageRoute(
          //        builder: (_) => RootPage(
          //              data: _namectl.text.toString(),
          //            ))),
          //    child: const Text('home'))
      //  ],
    //  ),
  //  );
//  }
}