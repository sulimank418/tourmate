import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourmate1/basic.dart';

// ignore: camel_case_types
class footer extends StatefulWidget {
  const footer({Key? key, this.tabIndex = 0}) : super(key: key);
  final int tabIndex;

  @override
  _footerState createState() => _footerState();
}

// ignore: camel_case_types
class _footerState extends State<footer> {
  int _selectedIndex = 0;

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 0) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => MainHome(index: 0)));
      }
      if (_selectedIndex == 1) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => MainHome(index: 1)));
      }
      if (_selectedIndex == 2) {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => MainHome(index: 2)));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    _selectedIndex = widget.tabIndex;
    return BottomNavigationBar(
      elevation: 20,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.blue,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.language_outlined),
            // ignore: deprecated_member_use
            title: Text("Explore")),
        BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            // ignore: deprecated_member_use
            title: Text("Search")),
        BottomNavigationBarItem(
            icon: Icon(Icons.edit_outlined),
            // ignore: deprecated_member_use
            title: Text("Review"))
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTap,
    );
  }
}
