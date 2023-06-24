import 'package:flutter/material.dart';
import 'package:gitpaste/view/home.dart';
import 'package:gitpaste/view/notify.dart';
import 'package:gitpaste/view/profile.dart';
import 'package:gitpaste/view/search.dart';
import 'package:gitpaste/view/space.dart';

class RootPage extends StatefulWidget {
  final String data;

  const RootPage({Key? key, required this.data}) : super(key: key);

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenido ${widget.data}'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Acción del botón flotante
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueGrey,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.space_bar),
            label: "Space",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active),
            label: "Notify",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
        currentIndex: currentPageIndex,
        onTap: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
      ),
      body: IndexedStack(
        index: currentPageIndex,
        children: [
          //ordenamiento de las pestañas basada en en orden de diseño
          const home(),
          const Search(),
          const Space(),
          const Notify(),
          Profile(username: widget.data),
        ],
      ),
    );
  }
}
