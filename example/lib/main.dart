import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FLUTTER PROFILE PICTURE',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example FPP'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            width: 500,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Table(
              border: TableBorder.all(),
              columnWidths: const <int, TableColumnWidth>{
                0: FlexColumnWidth(),
                1: FlexColumnWidth(),
                2: FlexColumnWidth(),
              },
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: <TableRow>[
                _exampleDefault(),
                _exampleRandomColor(),
                _exampleMaxLetter(),
                _exampleEmptyName(),
                _exampleImages(),
                _exampleTooltipsWithoutRole(),
                _exampleTooltipsWithRole(),
                _exampleTooltipsWithRoleAndImages(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TableRow _exampleTooltipsWithRoleAndImages() {
    return TableRow(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Text(
            '8. Tooltips with role and images',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          // enable tooltip feature with role and image
          // same as example 7
          // but you can add parameter img = 'your_img'
          // background color and initial name will be replaced with the image
          child: ProfilePicture(
            name: 'Aditya Dharmawan Saputra',
            role: 'ADMINISTRATOR',
            radius: 31,
            fontsize: 21,
            tooltip: true,
            img: 'https://avatars.githubusercontent.com/u/37553901?v=4',
          ),
        ),
        Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              'Replace name with image, you can click the images if you want to show tooltips with full name and role',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    );
  }

  TableRow _exampleTooltipsWithRole() {
    return TableRow(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Text(
            '7. Tooltips with role',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          // enable tooltip feature with role
          // same as example 6
          // but you can add parameter role = 'your_role'
          // role will be appear under name
          child: ProfilePicture(
            name: 'Aditya Dharmawan Saputra',
            role: 'ADMINISTRATOR',
            radius: 31,
            fontsize: 21,
            tooltip: true,
          ),
        ),
        Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              'Click to show tooltips with full name and role',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    );
  }

  TableRow _exampleTooltipsWithoutRole() {
    return TableRow(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Text(
            '6. Tooltips without role',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          // enable tooltip feature
          // set tooltip = true
          // default is false
          // when you click the picture
          // name will be appear
          child: ProfilePicture(
            name: 'Aditya Dharmawan Saputra',
            role: '',
            radius: 31,
            fontsize: 21,
            tooltip: true,
          ),
        ),
        Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              'Click to show tooltips with full name',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    );
  }

  TableRow _exampleImages() {
    return TableRow(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Text(
            '5. Images',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          // change background color to image
          // set img = 'your_url_img'
          child: ProfilePicture(
            name: 'Aditya Dharmawan Saputra',
            radius: 31,
            fontsize: 21,
            img: 'https://avatars.githubusercontent.com/u/37553901?v=4',
          ),
        ),
        Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              'add "img:your_url" for replace the name with images',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    );
  }

  TableRow _exampleEmptyName() {
    return TableRow(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Text(
            '4. Empty Name',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          // for handling user without name
          // set name = '' (empty string)
          // will set default background color without name
          child: ProfilePicture(
            name: '',
            radius: 31,
            fontsize: 21,
          ),
        ),
        Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              'You can make a perfect circle without filling the name',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    );
  }

  TableRow _exampleMaxLetter() {
    return TableRow(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Text(
            '3. Max Letter',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          // set limit letter
          // use count = 'your_limit'
          // default is 2 if more than one words
          // default is 1 if less than two words
          child: ProfilePicture(
            name: 'Aditya Dharmawan Saputra',
            radius: 31,
            fontsize: 21,
            count: 3,
          ),
        ),
        Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              'add "count:your_length" for set how much the letters shown on circle',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    );
  }

  TableRow _exampleRandomColor() {
    return TableRow(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Text(
            '2. Random Color',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          // set random = true
          // default is false
          child: ProfilePicture(
            name: 'Aditya Dharmawan Saputra',
            radius: 31,
            fontsize: 21,
            random: true,
          ),
        ),
        Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              'add random:true if you want to give random color',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    );
  }

  TableRow _exampleDefault() {
    return TableRow(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Text(
            '1. Default',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Center(
          child: Container(
            child: Row(
              children: [
                // if there is only one word.
                ProfilePicture(
                  name: 'Dees',
                  radius: 31,
                  fontsize: 21,
                ),
                SizedBox(width: 5),
                // if more than one word.
                ProfilePicture(
                  name: 'Aditya Dharmawan Saputra',
                  radius: 31,
                  fontsize: 21,
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Text(
            'This is default style. Default color based on First Initial Name',
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }
}
