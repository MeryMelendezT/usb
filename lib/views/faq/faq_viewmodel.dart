import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class FaqViewModel extends BaseViewModel{
  late BuildContext _context;

  void initialize(BuildContext context) async {
    _context = context;
  }

  List get faq => _faq;

  //quiero un listado de faq con pregunta y respuesta
  List _faq = [
    {
      "question": "¿Qué es la USB?",
      "answer": "Es la Universidad Salesiana Boliviana, una universidad pública y gratuita ubicada en Bolivia."
    },
    {
      "question": "¿Qué es la USB?",
      "answer": "Es la Universidad Salesiana Boliviana, una universidad pública y gratuita ubicada en Bolivia."
    },
    {
      "question": "¿Qué es la USB?",
      "answer": "Es la Universidad Salesiana Boliviana, una universidad pública y gratuita ubicada en Bolivia."
    }
  ];
}