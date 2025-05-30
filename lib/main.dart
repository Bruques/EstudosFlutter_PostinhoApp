import 'package:flutter/material.dart';

void main() {
  runApp(const PostinhoApp());
}

class PostinhoApp extends StatelessWidget {
  const PostinhoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Postinho de Saúde',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: HomePage("Bruno"),
    );
  }
}

class HomePage extends StatelessWidget {

String name;
HomePage(this.name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bem vindo ao Postinho!"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Ola, ${name}",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 24),
            Text("Clique no botão para agendar uma consulta."),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                print("Consulta agendada!");
              },
              child: Text("Agendar uma consulta"),
            )
          ],
        ),
      ),
    );
  }
}
