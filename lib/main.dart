import 'package:flutter/material.dart';
import 'file:///C:/Users/Elodi/AndroidStudioProjects/flutter_app/lib/screens/categories_screen.dart';
import 'file:///C:/Users/Elodi/AndroidStudioProjects/flutter_app/lib/screens/category_meals_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CuistElo!',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.black,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',

        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: TextStyle(
              fontSize: 20,
              color: Color.fromRGBO(255, 255, 255, 1)
          ),
            bodyText2: TextStyle(
                color: Color.fromRGBO(220, 220, 220, 1)
            ),
            headline6: TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
            ),
        )
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => CategoriesScreen(),
            CategoryMealsScreen.routeName : (ctx) => CategoryMealsScreen(),
      },
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
        title: Text('CuistElo!'),
      ),
      body: Center(
        child: Text('Navigation Time!'),
      ),
    );
  }
}
