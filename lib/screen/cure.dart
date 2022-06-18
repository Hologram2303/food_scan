import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Curescreen extends StatelessWidget {
  final DocumentSnapshot value;

  const Curescreen({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List cure = value["cure"] as List;

    return Scaffold(
      appBar: AppBar(
        title: Text(value.id),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(),
            Image.network(value["image"]),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
            ),
            Divider(),
            for (int i = 0; i < cure.length; i++) ...[
              Row(
                children: [
                  Text(
                    "การรักษา ${i + 1} :",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(
                        255,
                        6,
                        247,
                        174,
                      ),
                    ),
                  ),
                  Text(
                    value[i],
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Divider(),
                ],
              )
            ],
          ],
        ),
      )),
    );
  }
}
