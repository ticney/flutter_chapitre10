import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../models/trip_model.dart';

class TripOverview extends StatelessWidget {
  final VoidCallback setDate;
  final Trip trip;
  final String cityName;

  double get amount {
    return 0;
  }

  TripOverview(
      {required this.setDate, required this.trip, required this.cityName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 200,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            cityName,
            style: TextStyle(
              fontSize: 25,
              decoration: TextDecoration.underline,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  trip.date != null
                      ? DateFormat("d/M/y").format(trip.date!)
                      : 'Choisissez une date',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ElevatedButton(
                child: Text('Selectioner une date'),
                onPressed: setDate,
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  'Montant / personne',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Text(
                '$amount \$',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
