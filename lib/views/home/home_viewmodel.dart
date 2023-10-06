import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel{
  late BuildContext _context;
  List get cards => _cards; 

  final List _cards = [
    {
      'name': 'SAS',
      'link': 'https://www.usalesiana.edu.bo/la_paz/'
    },
    {
      'name': 'SIES',
      'link': 'https://www.usalesiana.edu.bo/la_paz/'
    },
    {
      'name': 'SAS',
      'link': 'https://www.usalesiana.edu.bo/la_paz/'
    },
    {
      'name': 'SIES',
      'link': 'https://www.usalesiana.edu.bo/la_paz/'
    },
    {
      'name': 'SAS',
      'link': 'https://www.usalesiana.edu.bo/la_paz/'
    },
    {
      'name': 'IN',
      'link': 'https://www.usalesiana.edu.bo/la_paz/'
    },
  ];
  
  void initialize(BuildContext context) async {
    _context = context;
  }
}