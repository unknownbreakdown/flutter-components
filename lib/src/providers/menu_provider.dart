import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> options = [];

  _MenuProvider();

  Future<List<dynamic>> loadData() async {
    await rootBundle.loadString("data/menu_opts.json").then((data) {
      Map dataMap = json.decode(data);
      options = dataMap['rutas'];
    });

    return options;
  }
}

final _MenuProvider menuProvider = _MenuProvider();
