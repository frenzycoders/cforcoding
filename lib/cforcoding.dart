import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/configs.dart';



class CforCoding extends StatelessWidget {
  const CforCoding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppConfigs.appName,
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      enableLog: true,
      getPages: AppConfigs.routes,
      initialRoute: AppConfigs.initialRoute,
    );
  }
}
