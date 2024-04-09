import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:meta_seo/meta_seo.dart';

import '../../../../../../main.dart';

@ReadyBeforeRunApp()
Future<void> readyForMetaSeoModule() async {
  if (kIsWeb) {
    MetaSEO().config();
  }
}
