import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
        body: SafeArea(
      child: Column(children: [
        Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: const Image(
                  image: AssetImage('assets/images/bg_top.png'),
                  fit: BoxFit.fill),
            ),
            Positioned(
              child: Text(
                arguments['name'],
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto'),
              ),
              top: 42,
              left: 28,
            )
          ],
        ),
        Center(
            child: GestureDetector(
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(90)),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ))
      ]),
    ));
  }
}
