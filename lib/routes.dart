import 'package:coffeshop/Detail%20Order/detail_order.dart';
import 'package:coffeshop/Home/home.dart';
import 'package:flutter/widgets.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  Home.routeName: (context) => Home(),
  DetailOrder.routeName: (context) => DetailOrder(),
};
