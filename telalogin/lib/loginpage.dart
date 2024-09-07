import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 219, 243, 255),
        body: Padding(
            padding: EdgeInsets.all(40),
            child: Center(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(
                  height: 120,
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          "https://cdn-icons-png.flaticon.com/512/149/149071.png"),
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                TextFormField(
                  autofocus: true,
                  style: new TextStyle(color: Colors.black, fontSize: 20),
                  decoration: InputDecoration(
                      labelText: "Nome de Usuário",
                      labelStyle: TextStyle(color: Colors.black)),
                ),
                TextFormField(
                  autofocus: true,
                  obscureText: true,
                  style: new TextStyle(color: Colors.black, fontSize: 20),
                  decoration: InputDecoration(
                      labelText: "Senha",
                      labelStyle: TextStyle(color: Colors.black)),
                ),
                SizedBox(
                  height: 40,
                ),
                ButtonTheme(
                    child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.blueGrey),
                    foregroundColor: WidgetStatePropertyAll(Colors.white),
                  ),
                  onPressed: () => {},
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 28),
                  ),
                )),
              ],
            ))));
  }
}
