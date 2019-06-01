import 'package:flutter/material.dart';
import 'package:appanimestrue/constant/Constant.dart';
import 'package:appanimestrue/curved_navigation_bar.dart';
import 'package:appanimestrue/screen/GridExplore.dart';
List<Color> _colors = [
  Colors.red,
  Colors.blue,
  Colors.teal,
  Colors.brown,
  Colors.pink
];
class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}
class _NavBarState extends State<NavBar> {
  int _page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        height: 50.0,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.video_library, size: 30),
          Icon(Icons.explore, size: 30),
          Icon(Icons.calendar_today, size: 30),
          Icon(Icons.perm_identity, size: 30),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: _colors[_page],
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (int index) {
          setState(() {
            _page = index;

          });
        },
      ) ,
      body: bodyColor(context, _page),
    );
  }
}
Widget bodyColor(BuildContext context, int _page) {

  switch(_page) {
    case 0:
      return  Scaffold(
        appBar: AppBar(
                    centerTitle: true,
          title: Text('AnimesTrue'),
          textTheme: TextTheme(title: TextStyle(color: Colors.black,fontSize: 20)),
        ),
        body: new Scaffold(
          backgroundColor: _colors[_page],
        ),
      );
      break;
    case 1:
      return  Scaffold(
          appBar: AppBar(
           centerTitle: true,
            title: Text('Novos Episodios'),
            textTheme: TextTheme(title: TextStyle(color: Colors.black,fontSize: 20)),
          ),
          body:  new Scaffold(
            backgroundColor: _colors[_page],
          ),
      );
      break;
    case 2:
      return  Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Explorar'),
          textTheme: TextTheme(title: TextStyle(color: Colors.black,fontSize: 20)),
        ),
        body: new Scaffold(
          backgroundColor: _colors[_page],
        ),
      );
      break;
    case 3:
      return  Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Calendario'),
          textTheme: TextTheme(title: TextStyle(color: Colors.black,fontSize: 20)),
        ),
        body: new Scaffold(
          backgroundColor: _colors[_page],
        ),
      );
      break;
    case 4:
      return  Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Minha Conta'),
          textTheme: TextTheme(title: TextStyle(color: Colors.black,fontSize: 20)),
        ),
        body: new Scaffold(
          backgroundColor: _colors[_page],
        ),
      );
      break;
  }
}