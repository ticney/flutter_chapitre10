import 'package:flutter/material.dart';
import 'views/404/not_found.dart';
import 'models/city_model.dart';
import 'views/city/city_view.dart';
import './views/home/home_view.dart';

main() {
  runApp(DymaTrip());
}

class DymaTrip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomeView(),
      // initialRoute: '/city',
      routes: {
        '/': (context) {
          return HomeView();
        }
      },
      onGenerateRoute: (settings) {
        if (settings.name == CityView.routeName) {
          final City city = settings.arguments as City;
          return MaterialPageRoute(builder: (context) {
            return CityView(
              city: city,
            );
          });
        }
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) {
          return NotFound();
        });
      },
      // home: CityView(),
    );
  }
}
