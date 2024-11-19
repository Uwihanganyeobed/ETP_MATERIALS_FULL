// import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Image.network('https://i.imgur.com/GcMdik9.png'),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.cyan,
              child: Text("One"),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.green,
              child: Text("Two"),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.yellow,
              child: Text("Three"),
            ),
          ),
        ],
      ),
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.end,
      //   crossAxisAlignment: CrossAxisAlignment.end,
      //   children: <Widget>[
      //     Row(
      //       children: <Widget>[
      //         Text("hello"),
      //         Text("world"),
      //       ],
      //     ),
      //     Container(
      //       padding: EdgeInsets.all(20.0),
      //       color: Colors.cyan,
      //       child: Text('one'),
      //     ),
      //     Container(
      //       padding: EdgeInsets.all(30.0),
      //       color: Colors.greenAccent,
      //       child: Text('two'),
      //     ),
      //     Container(
      //       padding: EdgeInsets.all(40.0),
      //       color: Colors.pinkAccent,
      //       child: Text('three'),
      //     )
      //   ],
      // ),

      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: <Widget>[
      //     Text("Hello world"),
      //     ElevatedButton(
      //       onPressed: () {},
      //       style: ButtonStyle(
      //         backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
      //       ),
      //       child: Text("Click me"),
      //     ),
      //     Container(
      //       color: Colors.cyan,
      //       padding: EdgeInsets.all(30.0),
      //       child: Text("Inside container"),
      //     )
      //   ],
      //   //  Padding(
      //   // padding: EdgeInsets.all(16.0),
      //   // child: Text("Hello"),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Button Pressed");
        },
        backgroundColor: Colors.red,
        child: Text("Click"),
      ),
    );
  }
}



// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => MyAppState(),
//       child: MaterialApp(
//         title: 'Namer App',
//         theme: ThemeData(
//           useMaterial3: true,
//           colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
//         ),
//         home: MyHomePage(),
//       ),
//     );
//   }
// }

// class MyAppState extends ChangeNotifier {
//   var current = WordPair.random();

//   void getNext() {
//     current = WordPair.random();
//     notifyListeners();
//   }
// }

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var appState = context.watch<MyAppState>();

//     return Scaffold(
//       body: Column(
//         children: [
//           Text('A random Awesome idea:'),
//           Text(appState.current.asLowerCase),
//           ElevatedButton(
//             onPressed: () {
//               appState.getNext();
//             },
//             child: Text('Next'),
//           ),
//         ],
//       ),
//     );
//   }
// }

