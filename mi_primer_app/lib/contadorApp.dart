



import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  static const String _title = 'Ejemplo Contador';

   const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Contador(),
    );
  }
}

class Contador extends StatefulWidget {
 Contador({super.key});

  @override
  _ContadorState createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int _contar = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ejemplo - Uno',
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'El número es: $_contar',
              style: TextStyle(fontSize: 35.0, color: Colors.blue),
            ),
            SizedBox(height: 20.0),
            CircleAvatar(
              radius: 80.0,
              child: Image.asset('assets/imagen1.jpg'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 50.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.restore),
                onPressed: () {
                  setState(() {
                    _contar = 0;
                  });
                },
                tooltip: 'Restablecer contador',
                color: Colors.white,
              ),
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  setState(() {
                    _contar = _contar + 1;
                    if (_contar == 20) {
                      _contar = 0;
                    }
                  });
                },
                tooltip: 'Incrementar contador',
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            _contar = _contar + 1;
            if (_contar == 20) {
              _contar = 0;
            }
          });
        },
        tooltip: 'Incrementar contador',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
