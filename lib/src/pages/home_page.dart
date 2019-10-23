import 'package:firetest/src/widgets/food_category.dart';
import 'package:flutter/material.dart';

import '../widgets/bought_foods.dart';
import '../widgets/home_top_info.dart';
import '../widgets/search_field.dart';

//Import food data
import '../data/food_data.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Food> _foods = foods;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new ListView(
          padding: EdgeInsets.only(left: 20.0, top: 50.0, right: 20.0),
          children: <Widget>[
            new HomeTopInfo(),
            new FoodCategory(),
            new SizedBox(height: 15.0),
            new SearchField(),
            new SizedBox(height: 15.0),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Frequently Bought Foods", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
                GestureDetector(
                    onTap: null,
                    child: Text("View All", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.orangeAccent))
                ),
              ],
            ),
            SizedBox(height:18.0),
            Column(
                children: _foods.map(_buildFoodItems).toList()
            ),
          ],
        )
    );
  }
  Widget _buildFoodItems(Food food){

    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: BoughtFoods(
        id: food.id,
        name: food.name,
        imagePath: food.imagePath,
        category: food.category,
        discount: food.discount,
        price: food.price,
        ratings: food.ratings,
      ),
    );
  }
}

