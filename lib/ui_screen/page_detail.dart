import 'package:flutter/material.dart';

class PageDetail extends StatelessWidget {
  String namaFoto;
  String fileFoto;

  PageDetail({required this.namaFoto, required this.fileFoto});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('asset/$fileFoto'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('$namaFoto',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.deepPurple
                ),
              ),
            ),

            MaterialButton(onPressed: (){
              Navigator.pop(context);
            },

              child: Text('Back'),
              color: Colors.deepPurple,
              textColor: Colors.white,
            )

          ],
        ),
      ),
    );
  }
}
