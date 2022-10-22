// ignore_for_file: unnecessary_brace_in_string_interps

import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:galaxeus_lib/galaxeus_lib.dart';
import 'package:fetch_api_bmkg_dart/fetch_api_bmkg_dart.dart';

void main() async {
  String url = "https://data.bmkg.go.id/DataMKG/TEWS/gempaterkini.json";
  http.Response response = await http.get(Uri.parse(url));
  if (response.statusCode != 200) {
    return print("Maaf api sedang dalam gangguan / anda tidak ada kuota internet, tolong coba lain kali ya!");
  }
  Map data = json.decode(response.body);
  InfoGempa infoGempa = InfoGempa(data);
  List<InfoGempaInfogempaGempa?>? info_gempas = infoGempa.Infogempa.gempa;
  if (info_gempas == null) {
    return print("Maaf data kosong mungkin tidak ada gempa");
  }
  for (var i = 0; i < info_gempas.length; i++) {
    InfoGempaInfogempaGempa? gempa = info_gempas[i];
    if (gempa == null) {
      continue;
    }
    print(jsonToString(gempa.toJson(), title: "\n\nHasil Gempa ${i + 1}"));
  }
}

String jsonToString(Map data, {
  String title = ""
}) {
  late String message = title;
  data.forEach((key, value) {
    message += "\n${key}: ${value}";
  });
  return message;
}
