import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';
import '/app/controllers/controller.dart';

class NotifPage extends NyStatefulWidget {
  final Controller controller = Controller();
  
  static const path = '/notif';
  
  NotifPage({Key? key}) : super(key: key);
  
  @override
  _NotifPageState createState() => _NotifPageState();
}

class _NotifPageState extends NyState<NotifPage> {

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
