import 'package:bottom_navi_bar/Menu_list_tile.dart';
import 'package:flutter/material.dart';

class LeftDrawer extends StatelessWidget{
  const LeftDrawer({super.key});

  @override

  Widget build(BuildContext context){
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children:const [
          UserAccountsDrawerHeader(
            accountName: Text('Abebe Kebede'),
            accountEmail:Text('abebe@gmail.com'),
            currentAccountPicture: Icon(
              Icons.face,
              size: 80.0,),
            otherAccountsPictures: [
              Icon(
                Icons.bookmark_border,
              ),
            ], 
          ), 
            MenuListTile(),          
        ],
      ),
    );
  }
}