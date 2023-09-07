import 'package:nylo_framework/nylo_framework.dart';

/// Header Model.

class Header extends Model {
  int? index;
  bool? visible;

  Header({this.index, this.visible});

  Header.fromJson(data) {}

  toJson() {}
}
