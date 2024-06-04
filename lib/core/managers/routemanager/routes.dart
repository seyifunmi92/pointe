class Routes {
  Routes._internal();

  static final Routes instance = Routes._internal();

  String get initialView => "View1";

  String get secondView => "View2";
}
