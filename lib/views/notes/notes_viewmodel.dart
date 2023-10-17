import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class NotesViewModel extends BaseViewModel{
  late BuildContext _context;

  void initialize(BuildContext context) async {
    _context = context;
  }
}