import 'package:flutter/material.dart';
import 'package:proyecto_final/pages/widgets/learn_today_widget.dart';
import 'package:proyecto_final/pages/widgets/search_bar_widget.dart';
import 'package:proyecto_final/Colors/colors_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static final routeName = 'homePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:_bodyPage(context),
        ),
    );
  }
  
  Widget _bodyPage(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
          top: 16.0, 
          left: 16.0, 
          right: 16.0,
          ),
          child: _appBar(),
        ),
        _body(),
        _bottomNavigation(),
      ],
    );
  }
  
  Widget _appBar() {
    var hoy = DateTime.now();
    var month;
    if (hoy.month == 1){month = ('Jan.');};
    if (hoy.month == 2){month = ('Feb');};
    if (hoy.month == 3){month = ('Mar');};
    if (hoy.month == 4){month = ('Apr');};
    if (hoy.month == 5){month = ('May');};
    if (hoy.month == 6){month = ('Jun');};
    if (hoy.month == 7){month = ('Jul');};
    if (hoy.month == 8){month = ('Aug');};
    if (hoy.month == 9){month = ('Sep');};
    if (hoy.month == 10){month = ('Oct');};
    if (hoy.month == 11){month = ('Nov');};
    if (hoy.month == 12){month = ('Dec');};

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text('${hoy.day} ${month}', 
            style: TextStyle(
              color: ColorsList.disableColor,
              fontSize: 20.0,
            ),),
            Row(
              children: [
                Text('Hi, Kathryn', 
                style: TextStyle(
                  color: ColorsList.backgroundButton,
                  fontWeight: FontWeight.bold,
                  fontSize: 35.0
                ),)
              ],
            )
          ],
        ),
         CircleAvatar(
              backgroundImage: AssetImage(
                'assets/images/descarga.jpeg'),
                minRadius: 35.0,
        ),
      ],
    );
  }
  
  Widget _body() {
    final double _borderValue= 35.0;

    return Expanded(
      child: ListView(
        padding: EdgeInsets.only(top: 20.0),
        shrinkWrap: true,
        children: [
          Container(
            height: 560.0,
            decoration: BoxDecoration(
              color: ColorsList.backgroundBody,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(_borderValue),
                topRight: Radius.circular(_borderValue),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 20.0,
                    left: 30.0,
                    right: 30.0,
                  ),
                  child: SearchBarWidget(),
                ),
                SizedBox(
                 
                ),
                LearnTodayWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _bottomNavigation extends StatelessWidget{
   @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      unselectedItemColor: Colors.black,
      selectedFontSize: 14,
      unselectedFontSize: 14,
      items: const[
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
            label: 'Explore',
            icon: Icon(Icons.explore)
          ),
          BottomNavigationBarItem(
            label: 'Chat',
            icon: Icon(Icons.chat)
          ),
          BottomNavigationBarItem(
            label: 'Menu',
            icon: Icon(Icons.menu)
          ),
      ],
      selectedItemColor: Colors.black,
    );
  }
}
  



