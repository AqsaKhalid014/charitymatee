import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class functions {
  static container(
    IconData icon,
    Color colour,
    String text,
    VoidCallback ontap,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: InkWell(
        onTap: ontap,
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              color: Colors.white70, borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Spacer(),
              Icon(
                icon,
                size: 30,
                color: colour,
              ),
              Text(
                text,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  static container2(
    Color colour,
    String text,
    VoidCallback ontap,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: InkWell(
        onTap: ontap,
        child: Container(
          width: 120,
          height: 100,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Spacer(),
              Text(
                text,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  static Dialogboxx(BuildContext context, String text) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(text),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Ok'))
            ],
          );
        });
  }
}
