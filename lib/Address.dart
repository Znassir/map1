import 'package:flutter/material.dart';
import 'main.dart';
import 'maindart2.dart';

class Address extends StatelessWidget {
  const Address({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Online Programmer'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.blue,
              child: Column(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                  ),
                  ListTile(
                    title: Text("Menu"),
                    leading: Icon(Icons.home),
                  ),
                ],
              ),
            ),
            Container(
              width: 10,
              height: 10,
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    width: 10,
                    height: 10,
                  ),
                  ListTile(
                      title: Text("profile"),
                      leading: Icon(Icons.person),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      }),
                  ListTile(
                      title: Text("profile2"),
                      leading: Icon(Icons.person),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Page2()));
                      }),
                  ListTile(
                      title: Text("Address"),
                      leading: Icon(Icons.person),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Address()));
                      })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
