import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:usb/app/parameters_colors.dart';
import 'package:usb/views/faq/faq_viewmodel.dart';

class Item {
  final String id;
  final String expandedValue;
  final String headerValue;
  Item(
    this.id,
    this.expandedValue,
    this.headerValue,
  );

  factory Item.fromJson(dynamic json) {
    return Item(
        "${json['id']}", "${json['expandedValue']}", "${json['headerValue']}");
  }
}

var mylist = [
  {"id": "1", "headerValue": "question 1", "expandedValue": "answer 1"},
  {"id": "2", "headerValue": "question 2", "expandedValue": "answer 2"}
];

getFeedbackList() {
  return mylist.map((json) => Item.fromJson(json)).toList();
}

class FaqView extends StatelessWidget {
  const FaqView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Item> _data = getFeedbackList();
    return ViewModelBuilder<FaqViewModel>.nonReactive(
      viewModelBuilder: FaqViewModel.new,
      onViewModelReady: (model) => model.initialize(context),
      builder: (context, viewModel, child) => SafeArea(
        child: Scaffold(
          backgroundColor: ParametersColors.secondaryColor,
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Preguntas frecuentes',
                  style: TextStyle(fontSize: 24),
                ),
              ),
               ExpansionPanelList.radio(
                initialOpenPanelValue: 2,
                children: _data.map<ExpansionPanelRadio>(
                  (Item item) {
                    return ExpansionPanelRadio(
                      value: item.id,
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          title: Text(item.headerValue),
                        );
                      },
                      body: ListTile(
                        title: Text(item.expandedValue),
                      ),
                    );
                  },
                ).toList(),
              )
            ],
          ),

        ) 
      )
    );
  }
}