// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          //Título
          Column(
            children: [
              SizedBox(
                width: 200,
                height: 200,
                child: Image.asset("lib/image/telainicial_icon.png"),
              ),
              Text(
                'Estagiotec',
                style: TextStyle(
                  fontSize: 64,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(84, 51, 99, 1),
                ),
              ),
              Text('Criado para alunos por alunos',
                  style: TextStyle(
                    fontSize: 18,
                  ))
            ],
          ),

          //Subtitulo
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  'Explore as melhores vagas baseadas\n baseada na sua área de interesse.')
            ],
          ),

          //botões
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(157, 70),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    )),
                onPressed: () {
                  Navigator.pushNamed(context, 'telaCadastro');
                },
                child: Text(
                  'Cadastrar',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ) // botao cadastrar
                ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(157, 70),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    )),
                onPressed: () {
                  Navigator.pushNamed(context, 'telaLogin');
                },
                child: Text(
                  'Entrar',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                )),
          ])
        ]));
  }
}
