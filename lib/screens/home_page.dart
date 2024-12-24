import 'package:flutter/material.dart';
import 'package:toko_app/screens/colors_page.dart';
import 'package:toko_app/screens/family.dart';
import 'package:toko_app/screens/numbers_page.dart';

import '../components/category_item.dart';
import 'family_members.dart';
import 'phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text(
          'Toku',
        ),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  // builder: (_) => NumbersPage(),
                  // builder: (BuildContext context) => NumbersPage(),
                  builder: (context) => NumbersPage(),
                ),
              );
            },
            text: 'Numbers',
            color: const Color(0xffEF9235),
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  // builder: (_) => NumbersPage(),
                  // builder: (BuildContext context) => NumbersPage(),
                  builder: (context) => FamilyMembersPage(),
                ),
              );
            },
            text: 'Family Members',
            color: const Color(0xff558B37),
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  // builder: (_) => NumbersPage(),
                  // builder: (BuildContext context) => NumbersPage(),
                  builder: (context) => ColorsPage(),
                ),
              );
            },
            text: 'Colors',
            color: Color(0xff79359F),
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  // builder: (_) => NumbersPage(),
                  // builder: (BuildContext context) => NumbersPage(),
                  builder: (context) => PhrasesPage(),
                ),
              );
            },
            text: 'Phrases',
            color: Color(0xff50ADC7),
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  // builder: (_) => NumbersPage(),
                  // builder: (BuildContext context) => NumbersPage(),
                  builder: (context) => FamilyPage(),
                ),
              );
            },
            text: 'Family',
            color: Color.fromARGB(255, 199, 80, 80),
          ),
          /* Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(
              left: 24.0,
            ),
            width: double.infinity,
            height: 65.0,
            color: Color(0xffEF9235),
            child: Text(
              'Members',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(
              left: 24.0,
            ),
            width: double.infinity,
            height: 65.0,
            color: Color(0xff558B37),
            child: Text(
              'Family Members',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(
              left: 24.0,
            ),
            width: double.infinity,
            height: 65.0,
            color: Color(0xff79359F),
            child: Text(
              'Colors',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(
              left: 24.0,
            ),
            width: double.infinity,
            height: 65.0,
            color: Color(0xff50ADC7),
            child: Text(
              'Phrases',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
              ),
            ),
          ), */
        ],
      ),
    );
  }
}
