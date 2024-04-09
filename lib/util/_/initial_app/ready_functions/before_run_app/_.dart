import 'package:flutter/material.dart';
import '../../../../../main.dart';
import 'widgets_binding/_.dart';
import 'meta_seo_module/_.dart';

Future<void> readyBeforeRunApp() async {
if (_done) return; _done = true;

  await readyForWidgetsBinding();
  await Future.wait([
    readyForMetaSeoModule(),
  ]);

}
bool _done = false;
