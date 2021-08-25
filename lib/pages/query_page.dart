import 'package:flutter/material.dart';

class QueryPage extends StatefulWidget {
  const QueryPage({Key? key}) : super(key: key);

  @override
  _QueryPageState createState() => _QueryPageState();
}

class _QueryPageState extends State<QueryPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text.rich(TextSpan(children: [
            TextSpan(
                text: "Marcar Consulta  ",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w500)),
            TextSpan(
                text: "demanda instântanea",
                style: TextStyle(
                    color: Colors.white70, fontWeight: FontWeight.w400))
          ]))),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Icon(
                Icons.health_and_safety,
                color: Colors.white,
              ),
            ),
            ListTile(
              title: const Text('Fila'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
                key: _formKey,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Nome do paciente"),
                        SizedBox(width: 20),
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                                fillColor: Color(0xFFB3E5FC),
                                filled: true,
                                labelStyle: TextStyle(color: Colors.white),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide:
                                        BorderSide(color: Colors.transparent))),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text("Identificador Unico"),
                        SizedBox(width: 20),
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                                fillColor: Color(0xFFB3E5FC),
                                filled: true,
                                labelStyle: TextStyle(color: Colors.white),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                )),
                          ),
                        )
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
