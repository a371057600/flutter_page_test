import 'package:get/get.dart';
import 'package:linking_tesc_pro/page/aftersale/AfterSalePage.dart';
import 'package:linking_tesc_pro/page/aftersale/AfterSaleViewPage.dart';
import 'package:linking_tesc_pro/page/supExAnalysis/supPage.dart';
import 'package:linking_tesc_pro/page/taskpage.dart';
import 'package:linking_tesc_pro/page/workbenchpage.dart';

List<GetPage<dynamic>> getPagesroute = [
  GetPage(name: '/workbench', page: () => WorkBench()),
  GetPage(name: '/task', page: () => TaskPage()),
  GetPage(name: '/aftersale', page: () => AfterSaleApplication()),
  GetPage(name: '/seanalysis', page: () => SupPage()),
  GetPage(name: '/aftersaleview', page: () => AfterSaleViewPage())
];
