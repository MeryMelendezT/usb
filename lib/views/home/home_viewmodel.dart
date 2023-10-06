import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel{
  late BuildContext _context;
  List get cards => _cards; 
  List<String> get items => _items; 

  final List<String> _items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    // Agrega más elementos a la lista si es necesario
  ];

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