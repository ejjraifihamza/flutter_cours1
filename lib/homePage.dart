import 'package:flutter/material.dart';
import 'package:flutter_cours1/PageTwo.dart';
import 'container.dart';
// import './containerAlignment - TextAlign.dart';
// import './imageAssets.dart';
// import 'cardWedget.dart';
// import './columnPart1.dart';
// import './columnPart2.dart';
// import './Row.dart';
// import 'Stack.dart';
// import './Expanded.dart';
// import 'Icons.dart';
// import 'Divider.dart';
// import 'ExampleOne.dart';
// import './indexedStack.dart';
// import './wrap.dart';
// import 'SingleChildScrollView.dart';
// import 'SizedBox.dart';
// import 'Center.dart';
// import 'ElevatedButton.dart';
// import 'ElevatedButton.icon.dart';
// import 'InKWell.dart';
// import 'FloatingActionButton.dart';
// import 'StatefulWidget.dart';
// import 'package:flutter_cours1/DropDownButton.dart';
// import 'package:flutter_cours1/CheckBox.dart';
// import 'CheckBoxListTile.dart';
// import 'Radio.dart';
// import 'RadioListTile.dart';
// import 'Switch.dart';
// import 'switchListTile.dart';
import 'ListTile.dart';
// import 'CircleAvatar.dart';
import 'SnackBar.dart';
// import 'AlertDialog.dart';
// import 'ListView.dart';
// import 'ListviewBuilder.dart';
// import 'ListViewSeparator.dart';
// import 'GridViewBuilder.dart';
// import 'GridView.dart';
// import 'ListGenerate.dart';
// import 'GridViewCount.dart';
// import 'Drawer_EndDrawer.dart';
import 'AppBar.dart';
// import 'TabBar.dart';
// import 'TabController.dart';
import 'BottomNavigationBar.dart';
// import 'PageView.dart';
// import 'PageViewBuilder.dart';
// import 'TextFormField.dart';
import 'TextFormField_Form(validator).dart';
// import 'PageOne.dart';
// import 'PageThree.dart';
// import 'Slider.dart';
// import 'ScrollController.dart';
// import 'ShowModalBottomSheet.dart';
// import 'SearchDelegate.dart';
import 'HttpAndApi.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HttpAndApi1(),
      // routes: {
      //   'pageTwo': (context) => PageTwo1(),
      //   'pageThree': (context) => PageThree1()
      // },
    );
  }
}
