import 'package:flutter/material.dart';
import 'brain.dart';

void main() => runApp(Nakd());
class Nakd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nakd',
      home: SafeArea(child: HomePage()),
    );
  }
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
      backgroundColor: Colors.black,
      title: Center(child: Text('النكد اليوم')),

    ),
      body: Myapp ()


    );
  }
}
class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  List<Question> questionbank = [
    Question('hello',false),
    Question('bye',false),
    Question('byeeeeeee',false),





  ];
  int questionnum;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(children: <Widget>[
        SizedBox(height: 120,),
        Padding(
          padding: const EdgeInsets.all(80.0),
          child: Center(child: Text(questionbank[questionnum].questions,style: TextStyle(fontSize: 20,color: Colors.red),)),

        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(width: 200, height: 100,
            child: FlatButton(

                color:Colors.red ,
                onPressed: (){ setState(() {

                });

                },

                child:

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('صح',style: TextStyle(fontSize: 30)),
            )),
          ),
        ),
        SizedBox(height: 20,),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox( width: 200, height: 100,
            child: FlatButton(

                color:Colors.green ,
                onPressed: (){ setState(() {
                  questionnum++;

                });

                },

                child:

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('غلط',style: TextStyle(fontSize: 30),),
                )),
          ),
        ),

      ],

      ),
    );
  }
}








