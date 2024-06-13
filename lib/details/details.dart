import 'package:fit/bottom_navigation.dart';
import 'package:fit/details/widgets/dates.dart';
import 'package:fit/details/widgets/graph.dart';
import 'package:fit/details/widgets/steps.dart';
import 'package:flutter/material.dart';

import 'widgets/appbar.dart';
import 'widgets/info.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MainAppBar(appBar: AppBar()),
      body: Column(
        children: const [
          Dates(),
          Steps(),
          Graph(),
          Info(),
          Divider(height: 30),
          Stats(value: '', unit: '', label: '',),
          SizedBox(height: 30),
          BottomNavigation(),
        ],
      ),
    );
  }
}
