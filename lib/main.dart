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
TextEditingController nameController = TextEditingController();
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
            TextField(
              controller: nameController,
            ),
            ElevatedButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ConsultaPage(nomePaciente: nameController.text)),
              );
            }, 
            child: Text("Ver consultas!")
            )
          ],
        ),
      ),
    );
  }
}

class ConsultaPage extends StatelessWidget {

  String nomePaciente;

  ConsultaPage({required this.nomePaciente});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consultas"),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: [
          ConsultaCard("Dra. Ana Paula"),
          ConsultaCard("Dr. Marcos Aurélio")
        ],
      ),
    );
  }
}

class ConsultaCard extends StatelessWidget {
  String doctorName;

  ConsultaCard(this.doctorName);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.all(16),
      child: ListTile(
        leading: Icon(Icons.medical_services),
        title: Text(doctorName),
        subtitle: Text("30/05/2025 as 09:00"),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}