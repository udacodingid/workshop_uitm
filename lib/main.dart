import 'package:flutter/material.dart';
import 'package:workshop_uitm/ui_screen/page_home.dart';
import 'package:workshop_uitm/ui_screen/page_register.dart';
import 'package:workshop_uitm/ui_screen/page_splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Workshop UiTM',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: PageSplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//flutter class
// stateless : static
//stateful : dynamic
// create class --> st

class PageSatu extends StatefulWidget {
  const PageSatu({Key? key}) : super(key: key);

  @override
  _PageSatuState createState() => _PageSatuState();
}

class _PageSatuState extends State<PageSatu> {

  TextEditingController etEmail = new TextEditingController();
  TextEditingController etPass = new TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

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
      body: Container(
        child: Center(
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('asset/logo_uitm.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Welcome to UiTM Apps',
                  style: TextStyle(fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                      fontSize: 18
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  controller: etEmail,
                  decoration: InputDecoration(
                      hintText: 'Input Email Address '
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  controller: etPass,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Input Password '
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.all(10),
                child: MaterialButton(
                  child: Text('Login'),
                  onPressed: (){
                    setState(() {
                      print('Hasil inputan : ' + etEmail.text + " " + etPass.text);
                      //only success login : admin@gmail.com and pass : 123123
                      String stEmail = etEmail.text;
                      String stPass = etPass.text;

                      if((stEmail == "admin@gmail.com") && (stPass == "123123")){
                        print('login berhasil');
                        //move another page
                        Navigator.push(context, MaterialPageRoute(builder: (context)
                          => PageHome(email: stEmail ) // passing data
                        ));
                      }else{
                        print('Login gagal');
                      }
                    });

                    //do on background
                    //setState  ---> perubahan ui
                    //initState --> perbahan sebelum ui
                  },
                  color: Colors.deepPurple,
                  textColor: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(

                  onTap: (){
                    //move to another page
                    //navigator
                    //push : page a to page b
                    //pop
                    //pushname

                    Navigator.push(context, MaterialPageRoute(builder: (context)
                    => PageRegister()
                    ));

                  },
                  child: Text('Dont Have an Account ? Please Register',
                    style: TextStyle(fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple
                    ),
                  ),
                ),
              ),


              //boleh klik/ press --> widget button
              //Inkwell or gesture detecture
            ],
          ),
        ),
      ),
    );
  }
}

class PageDua extends StatefulWidget {
  const PageDua({Key? key}) : super(key: key);

  @override
  _PageDuaState createState() => _PageDuaState();
}

class _PageDuaState extends State<PageDua> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
