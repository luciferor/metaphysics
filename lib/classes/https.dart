import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:first_flutter_app/classes/res.dart';

class Https {
  String _url = '';
  Object _params = {};
  Https(this._url, this._params);

  responseData() async {
    var url = Uri.https('xapi.dsnbc.com', '/test', {'q': '{https}'});
    var response = await http.get(url);
    print('=========================');
    print(response);
    print('=========================');
  }
}
