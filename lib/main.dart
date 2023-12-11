import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController tv = TextEditingController();
  ScrollController sc = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Flutter Demo",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            children: [
              const Text("Controller Demo"),
              TextFormField(
                controller: tv,
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                controller: sc,
                child: const Column(
                  children: [
                    Text(
                      "Demo",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "Demo",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "Demo",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "Demo",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "Demo",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "Demo",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "Demo",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    sc.jumpTo(100);
                  },
                  child: Container(
                    child: Text("Up"),
                  ))
            ],
          ),
        ));
  }
}
