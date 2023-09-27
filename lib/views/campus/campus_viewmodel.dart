import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class CampusViewModel extends BaseViewModel{
  late BuildContext _context;

  List get campus => _campus; 
  
  
  final List _campus = [
    {
      'name': 'LA PAZ',
      'image': 'assets/images/sede-lpz.jpg',
      'link': 'https://www.usalesiana.edu.bo/la_paz/'
    },
    {
      'name': 'COCHABAMBA',
      'image': 'assets/images/sede-cbba.png',
      'link': 'https://www.usalesiana.edu.bo/cochabamba/'
    },
    {
      'name': 'SAN CARLOS - YAPACANI',
      'image': 'assets/images/sede-yapacani.png',
      'link': 'https://usalesiana.edu.bo/san_carlos-yapacani/'
    },
    {
      'name': 'SANTA CRUZ',
      'image': 'assets/images/sede-scz.jpg',
      'link': 'https://www.usalesiana.edu.bo/santa_cruz/'
    },
    {
      'name': 'MONTEAGUDO',
      'image': 'assets/images/sede-monteagudo.png',
      'link': 'https://www.usalesiana.edu.bo/monteagudo/'
    },
    {
      'name': 'CAMIRI',
      'image': 'assets/images/sede-camiri.jpg',
      'link': 'https://www.usalesiana.edu.bo/camiri/'
    },
    {
      'name': 'YACUIBA',
      'image': 'assets/images/sede-yacuiba.png',
      'link': 'https://www.usalesiana.edu.bo/yacuiba/'
    },
  ];

  void initialize(BuildContext context) async {
    _context = context;
  }
}