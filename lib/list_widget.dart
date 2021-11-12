import 'package:flutter/material.dart';

class SubjectList extends StatefulWidget {
  const SubjectList({Key? key}) : super(key: key);

  @override
  _SubjectListState createState() => _SubjectListState();
}

class _SubjectListState extends State<SubjectList> {
  static var todoItems = List.filled(5, "Item ");
  static var checkboxvalue = List.filled(5, false);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: todoItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: Row(
              children: [
                Checkbox(
                  value: checkboxvalue[index],
                  onChanged: (bool? value) {
                    setState(() {
                      checkboxvalue[index] = !checkboxvalue[index];
                    });
                  },
                ),
                Container(
                  margin: const EdgeInsets.all(12.0),
                  width: 80.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    color: const Color(0xff7c94b6),
                    borderRadius: const BorderRadius.all(Radius.circular(50.0)),
                    border: Border.all(
                      color: Colors.white,
                      width: 4.0,
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 4.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                ),
                Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 0.0),
                    child: Text(
                      todoItems[index] + (index + 1).toString(),
                      style: const TextStyle(fontSize: 24),
                    ))
              ],
            ),
            onTap: () {
              Navigator.pushNamed(context, '/details', arguments: {
                'name': todoItems[index] + (index + 1).toString()
              });
            },
          );
        });
  }
}
