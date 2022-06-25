import 'package:flutter/material.dart';
import 'package:workshop_uitm/main.dart';

class PageRegister extends StatelessWidget {
  const PageRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar : properties
      //AppBar : Widget
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('UiTM Apps'),
      ),

      //child : boleh 1 widget
      //children : boleh > 1 widget (column, row, list, stuck)
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Column(
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('asset/logo_uitm.png'),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Register Account UiTM Apps',
                    style: TextStyle(fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                        fontSize: 18
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Input Full Name '
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Input Email Address '
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: 'Input Phone Number ',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Input Password '
                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.all(10),
                  child: MaterialButton(
                    child: Text('Login'),
                    onPressed: (){},
                    color: Colors.deepPurple,
                    textColor: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),

                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)
                      => PageSatu()
                      ));
                    },
                    child: Text('Have an Account ? Please Login',
                      style: TextStyle(fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
