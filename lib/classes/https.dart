import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:first_flutter_app/classes/res.dart';

class Https {
  String _url = '';
  Object _params = {};
  Https(this._url, this._params);

  responseData() async {
    var url = Uri.https('https://xapi.dsnbc.com/test', 'whatsit/create');
    var response =
        await http.post(url, body: {'name': 'doodle', 'color': 'blue'});
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    print(await http.read(Uri.https('example.com', 'foobar.txt')));
  }
}
