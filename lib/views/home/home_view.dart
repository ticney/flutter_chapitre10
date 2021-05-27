import 'package:flutter/material.dart';
import '../../widgets/ask_modal.dart';
import './widgets/city_card.dart';
import '../../models/city_model.dart';

class HomeView extends StatefulWidget {
  static String routeName = '/';

  @override
  _HomeState createState() {
    return _HomeState();
  }
}

class _HomeState extends State<HomeView> {
  List cities = [
    City(name: 'Paris', image: 'assets/images/paris.jpeg'),
    City(name: 'Lyon', image: 'assets/images/lyon.jpeg'),
    City(name: 'Nice', image: 'assets/images/nice.jpeg')
  ];

  openModal(context) {
    askModal(context, 'hello veux tu quelques chose').then((result) {
      print(result);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text('dymatrip'),
        actions: <Widget>[Icon(Icons.more_vert)],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ...cities.map((city) {
              return CityCard(
                city: city,
              );
            }),
            RaisedButton(
              child: Text('modal'),
              onPressed: () {
                openModal(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
