import 'package:flutter/material.dart';
import 'package:flutter_fruits_app/models/list_item.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _listCategory(),
      ],
    );
  }

  Widget _listCategory() {
    return Container(
      height: 45.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: listItems.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 2.0,
                    ),
                  ),
                ),
                child: Text(
                  listItems[index].name,
                  style: TextStyle(
                    color:
                        _selectedIndex == index ? Colors.black : Colors.green ,
                    fontSize: 16.0,
                    letterSpacing: 1.2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
