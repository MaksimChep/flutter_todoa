import 'package:flutter/material.dart';
import 'list_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: const Image(
                image: AssetImage('assets/images/bg_top.png'),
                fit: BoxFit.fill),
          ),
          const Expanded(
            child: SubjectList(),
            flex: 5,
          ),
          Expanded(
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                      child: const Text('Add Items'),
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return Column(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: const Center(
                                        child: Text('Add Items',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ))),
                                    height: 80,
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(25),
                                            topRight: Radius.circular(25)),
                                        color: Colors.red),
                                  ),
                                  Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 300,
                                      child: Column(
                                        children: [
                                          const SizedBox(
                                            height: 30,
                                          ),
                                          Container(
                                            width: 300,
                                            child: const TextField(
                                              decoration: InputDecoration(
                                                  filled: true,
                                                  fillColor: Color(0xff6be5ab),
                                                  hintText: 'Hint Text',
                                                  hintStyle: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16,
                                                      fontFamily: 'Roboto')),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 50,
                                          ),
                                          Container(
                                            width: 100,
                                            height: 100,
                                            decoration: BoxDecoration(
                                                color: Colors.blue,
                                                borderRadius:
                                                    BorderRadius.circular(90)),
                                            child: const Center(
                                                child: Text('+',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 30))),
                                          ),
                                        ],
                                      ))
                                ],
                              );
                            });
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  topRight: Radius.circular(25)))))))
        ],
      ),
    ));
  }
}
