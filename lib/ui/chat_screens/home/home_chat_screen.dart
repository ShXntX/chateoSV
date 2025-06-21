import 'package:flutter/material.dart';

class HomeChatScreen extends StatelessWidget {
  HomeChatScreen({super.key});

  final List<Map<String, dynamic>> usuarios = [
    {
      "name": 'Santiago Vasquez',
      "iniciales": "SV",
      "color": Colors.deepOrange,
      "estado": "Offline",
    },
    {
      "name": 'Alvaro Armijos',
      "iniciales": "AA",
      "color": Colors.teal,
      "estado": "Offline",
    },
    {
      "name": 'Eduardo Armijos',
      "iniciales": "EA",
      "color": Colors.amber,
      "estado": "Offline",
    },
    {
      "name": 'Fernando Vasquez',
      "iniciales": "FV",
      "color": Colors.purple,
      "estado": "Offline",
    },
    {
      "name": 'Ruben Vasquez',
      "iniciales": "RV",
      "color": Colors.grey,
      "estado": "Offline",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.search, color: Colors.white),
                  Text(
                    'Home',
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                  CircleAvatar(
                    radius: 20,
                    child: Text(
                      "a",
                      style: TextStyle(color: Colors.white),
                    ), // Placeholder for user avatar
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        'My Contact',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 10),
                      Expanded(
                        child: ListView.builder(
                          itemCount: usuarios.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: CircleAvatar(
                                backgroundColor: usuarios[index]['color'],
                                child: Text(
                                  usuarios[index]['iniciales'],
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              title: Text(usuarios[index]['name']),
                              subtitle: Text(usuarios[index]['estado']),
                              trailing: Icon(
                                Icons.circle,
                                color: Colors.red,
                                size: 12,
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
