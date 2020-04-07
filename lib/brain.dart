import 'package:flutter/material.dart';

class Question {
  String questions;
  bool answers;
Question(String q, bool a){
  questions = q;
  answers = a;

}

}
class Brain{
  int questionnum;
  List<Question> questionbank = [
    Question('hello',false),
    Question('bye',false),



  ];


}
