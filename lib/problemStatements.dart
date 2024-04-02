import 'dart:ffi';

import 'package:code_editor/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:read_more_text/read_more_text.dart';
import 'package:code_editor/problemStatements.dart';

class Problems extends StatefulWidget {
  @override
  State<Problems> createState() => _ProblemsState();
}

class _ProblemsState extends State<Problems> {
  @override
  Widget build(BuildContext context) {
    String get;
    return Scaffold(
      appBar: AppBar(
        title: Align(
            alignment: Alignment.center, child: Text("Pocket Code Rider")),
        backgroundColor: Colors.purple,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.purple,
              child: Text(
                '1',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            title: Text(
              'Sum of Two Numbers',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            subtitle: ReadMoreText(
              'Write a program to print the sum of two numbers.\nSample Output:\nPrint the sum of two numbers :\n----------------------------------\nThe sum of 29 and 30 is : 59',
              style: TextStyle(color: Colors.black, fontSize: 12),
              numLines: 1,
              readMoreText: 'Read more',
              readLessText: 'Read less',
            ),
            trailing: Icon(
              Icons.forward,
              color: Colors.purple,
              size: 35,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyClass('Hello')));
            },
            hoverColor: Colors.amber,
            focusColor: Colors.greenAccent,
          ),
          Container(
            height: 2,
            decoration: BoxDecoration(color: Colors.black),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.purple,
              child: Text(
                '2',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            title: Text(
              'Size of Data Types',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            subtitle: ReadMoreText(
              ' Write a program to find the size of fundamental data types.\nSample Output:\nFind Size of fundamental data types :\n-------------------\nThe sizeof(char) is : 1 bytes\nThe sizeof(short) is : 2 bytes',
              style: TextStyle(color: Colors.black, fontSize: 12),
              numLines: 1,
              readMoreText: 'Read more',
              readLessText: 'Read less',
            ),
            trailing: Icon(
              Icons.forward,
              color: Colors.purple,
              size: 35,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyClass('A')));
            },
            hoverColor: Colors.amber,
            focusColor: Colors.greenAccent,
          ),
          Container(
            height: 2,
            decoration: BoxDecoration(color: Colors.black),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.purple,
              child: Text(
                '3',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            title: Text(
              'Mixed DataTypes',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            subtitle: ReadMoreText(
              'Write a program that displays mixed data types and arithmetic operations.\nSample output:\n5 + 7 = 12\n3.7 + 8.0 = 11.7',
              style: TextStyle(color: Colors.black, fontSize: 12),
              numLines: 1,
              readMoreText: 'Read more',
              readLessText: 'Read less',
            ),
            trailing: Icon(
              Icons.forward,
              color: Colors.purple,
              size: 35,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyClass('B')));
            },
            hoverColor: Colors.amber,
            focusColor: Colors.greenAccent,
          ),
          Container(
            height: 2,
            decoration: BoxDecoration(color: Colors.black),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.purple,
              child: Text(
                '4',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            title: Text(
              'Swap Two Numbers',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            subtitle: ReadMoreText(
              'Write a program that swaps two numbers.\nSample Output:\n-----------------------\nInput 1st number : 25\nInput 2nd number : 39\nAfter swapping the 1st number is : 39',
              style: TextStyle(color: Colors.black, fontSize: 12),
              numLines: 1,
              readMoreText: 'Read more',
              readLessText: 'Read less',
            ),
            trailing: Icon(
              Icons.forward,
              color: Colors.purple,
              size: 35,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyClass('C')));
            },
            hoverColor: Colors.amber,
            focusColor: Colors.greenAccent,
          ),
          Container(
            height: 2,
            decoration: BoxDecoration(color: Colors.black),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.purple,
              child: Text(
                '5',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            title: Text(
              'Volume of Sphere',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            subtitle: ReadMoreText(
              'Write a program that calculates the volume of a sphere.\nSample Output:\nInput the radius of a sphere : 6\nThe volume of a sphere is : 904.32',
              style: TextStyle(color: Colors.black, fontSize: 12),
              numLines: 1,
              readMoreText: 'Read more',
              readLessText: 'Read less',
            ),
            trailing: Icon(
              Icons.forward,
              color: Colors.purple,
              size: 35,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyClass('D')));
            },
            hoverColor: Colors.amber,
            focusColor: Colors.greenAccent,
          ),
          Container(
            height: 2,
            decoration: BoxDecoration(color: Colors.black),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.purple,
              child: Text(
                '6',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            title: Text(
              'Divide Two Numbers',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            subtitle: ReadMoreText(
              'Write a program to divide two numbers and print them on the screen.\nSample Output:\nThe quotient of 30 and 10 is : 3',
              style: TextStyle(color: Colors.black, fontSize: 12),
              numLines: 1,
              readMoreText: 'Read more',
              readLessText: 'Read less',
            ),
            trailing: Icon(
              Icons.forward,
              color: Colors.purple,
              size: 35,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyClass('E')));
            },
            hoverColor: Colors.amber,
            focusColor: Colors.greenAccent,
          ),
          Container(
            height: 2,
            decoration: BoxDecoration(color: Colors.black),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.purple,
              child: Text(
                '7',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            title: Text(
              'Type Casting',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            subtitle: ReadMoreText(
              ' Write a program to test Type Casting.\nSample Output:\nPrint floating-point number in fixed format with 1 decimal place:\nTest explicit type casting :\n0\n0.5\n0.5\n0.0',
              style: TextStyle(color: Colors.black, fontSize: 12),
              numLines: 1,
              readMoreText: 'Read more',
              readLessText: 'Read less',
            ),
            trailing: Icon(
              Icons.forward,
              color: Colors.purple,
              size: 35,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyClass('F')));
            },
            hoverColor: Colors.amber,
            focusColor: Colors.greenAccent,
          ),
          Container(
            height: 2,
            decoration: BoxDecoration(color: Colors.black),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.purple,
              child: Text(
                '8',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            title: Text(
              'Volume of Cylinder',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            subtitle: ReadMoreText(
              'Write a program to calculate the volume of a cylinder.\nSample Output:\nInput the radius of the cylinder : 4\nInput the height of the cylinder : 8\nThe volume of a cylinder is : 401.92',
              style: TextStyle(color: Colors.black, fontSize: 12),
              numLines: 1,
              readMoreText: 'Read more',
              readLessText: 'Read less',
            ),
            trailing: Icon(
              Icons.forward,
              color: Colors.purple,
              size: 35,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyClass('G')));
            },
            hoverColor: Colors.amber,
            focusColor: Colors.greenAccent,
          ),
          Container(
            height: 2,
            decoration: BoxDecoration(color: Colors.black),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.purple,
              child: Text(
                '9',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            title: Text(
              'Simple Interest',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            subtitle: ReadMoreText(
              ' Write a program to enter P, T, R and calculate Simple Interest.\nSample Output:\nInput the Principle: 20000\nInput the Rate of Interest: 10\nInput the Time: 1.5\nThe Simple interest for the amount 20000 for 1 years @ 10 % is: 2000',
              style: TextStyle(color: Colors.black, fontSize: 12),
              numLines: 1,
              readMoreText: 'Read more',
              readLessText: 'Read less',
            ),
            trailing: Icon(
              Icons.forward,
              color: Colors.purple,
              size: 35,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyClass('H')));
            },
            hoverColor: Colors.amber,
            focusColor: Colors.greenAccent,
          ),
          Container(
            height: 2,
            decoration: BoxDecoration(color: Colors.black),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.purple,
              child: Text(
                '10',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            title: Text(
              'Area of Hexagon',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            subtitle: ReadMoreText(
              'Write a program to print the area of a hexagon.\nSample Output:\nInput the side of the hexagon: 6\nTshe area of the hexagon is: 93.5307',
              style: TextStyle(color: Colors.black, fontSize: 12),
              numLines: 1,
              readMoreText: 'Read more',
              readLessText: 'Read less',
            ),
            trailing: Icon(
              Icons.forward,
              color: Colors.purple,
              size: 35,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyClass('I')));
            },
            hoverColor: Colors.amber,
            focusColor: Colors.greenAccent,
          ),
          Container(
            height: 2,
            decoration: BoxDecoration(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
