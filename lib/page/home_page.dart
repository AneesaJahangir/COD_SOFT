import 'package:flutter/material.dart';
import 'package:quiz_app_task/data/categories.dart';
import 'package:quiz_app_task/data/categories.dart';
import 'package:quiz_app_task/model/category.dart';
import 'package:quiz_app_task/page/category_page.dart';
import 'package:quiz_app_task/widget/category_detail_widget.dart';
import 'package:quiz_app_task/widget/category_header_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      leading: Icon(Icons.menu),
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text('School Quiz'),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(5),
        child: Container(
          padding: EdgeInsets.all(3),
          alignment: Alignment.centerLeft,
        ),
      ),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepOrange, Colors.deepOrangeAccent],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
      ),
      actions: [
        Icon(Icons.search),
        SizedBox(width: 12),
      ],
    ),
    backgroundColor:Colors.white,
    body: ListView(
      physics: BouncingScrollPhysics(),
      padding: const EdgeInsets.all(16),
      children: [
        SizedBox(height: 100),
        buildCategories(),
      ],
    ),
  );

  Widget buildCategories() => Container(
    height: 400,
    child: GridView(
      primary: false,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 4 / 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      children: categories
          .map((category) => CategoryHeaderWidget(category: category))
          .toList(),
    ),
  );
}