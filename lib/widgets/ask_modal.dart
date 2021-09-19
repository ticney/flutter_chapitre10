import 'package:flutter/material.dart';

askModal(BuildContext context, String question) {
  return Navigator.push(
    context,
    PageRouteBuilder(
      opaque: false,
      pageBuilder: (context, _, __) {
        return AskModal(
          question: question,
        );
      },
    ),
  );
}

class AskModal extends StatelessWidget {
  final String question;

  AskModal({required this.question});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black54,
        alignment: Alignment.center,
        child: Card(
          child: Container(
            color: Colors.white,
            width: double.infinity,
            height: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(question),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ElevatedButton(
                      child: Text('ok'),
                      onPressed: () {
                        Navigator.pop(context, 'ok');
                      },
                      style:
                          ElevatedButton.styleFrom(primary: Colors.redAccent),
                    ),
                    ElevatedButton(
                      child: Text('annuler'),
                      onPressed: () {
                        Navigator.pop(context, 'annuler');
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
