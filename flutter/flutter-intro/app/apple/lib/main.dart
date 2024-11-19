import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(const App());


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  double rate = 1.0, result = 0.0;
  final controller = TextEditingController();
  Future<void> fetchRate() async {
    final response = await http
        .get(Uri.parse('https://api.exchangerate-api.com/v4/latest/USD'));
    setState(() => rate = json.decode(response.body)['rates']['EUR']);
  }

  @override
  void initState() {
    super.initState();
    fetchRate();
  }

  void convert() {
    setState(() => result = (double.tryParse(controller.text) ?? 0) * rate);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Currency Converter"),
      ),
      body: Column(
        children: [
          TextField(
            controller: controller,
            decoration: const InputDecoration(),
          ),
          Text("$result"),
          ElevatedButton(onPressed: convert, child: const Text("Convert"))
        ],
      ),
    );
  }
}

// class MyHome extends StatefulWidget {
//   const MyHome({super.key});

//   @override
//   State<MyHome> createState() => _MyHomeState();
// }

// class _MyHomeState extends State<MyHome> {
//   int counter = 40;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Padding(
//         padding: const EdgeInsets.fromLTRB(50, 50, 50, 50),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             Center(
//               child: Text(
//                 "Counter: $counter",
//                 style: TextStyle(
//                   color: Colors.cyan[800],
//                   decoration: TextDecoration.none,
//                 ),
//               ),
//             ),
//             Image(
//               image: NetworkImage('https://i.imgur.com/S5e1URL.png'),
//               width: 300,
//               height: 200,
//             ),
//             FloatingActionButton(
//               onPressed: () {
//                 setState(() {
//                   counter++;
//                 });
//               },
//               child: Icon(Icons.add),
//             ),
//             TextButton.icon(
//               onPressed: () {
//                 setState(() {
//                   counter--;
//                 });
//               },
//               icon: Icon(Icons.remove),
//               label: Text("Minus"),
//             ),
//             FloatingActionButton(
//               onPressed: () {
//                 setState(() {
//                   counter = 0;
//                 });
//               },
//               child: Icon(Icons.clear),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }


// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'Flutter Demo',
//       home: HomeApp(),
//     );
//   }
// }

// class HomeApp extends StatelessWidget {
//   const HomeApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Scaffold(
//           appBar: AppBar(
//         title: Text(
//           "Hello",
//           style: TextStyle(
//             fontSize: 30,
//             color: Colors.cyan[800],
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       )),
     
//     );
//   }
// }
