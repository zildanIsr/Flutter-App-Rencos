import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';
import '/app/controllers/controller.dart';

class AddPage extends NyStatefulWidget {
  final Controller controller = Controller();
  
  static const path = '/add';
  
  AddPage({Key? key}) : super(key: key);
  
  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends NyState<AddPage> {

  @override
  init() async {
    super.init();
    
  }
  
  @override
  void dispose() {
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: SafeArea(
         child: Container(),
      ),
    );
  }
}
