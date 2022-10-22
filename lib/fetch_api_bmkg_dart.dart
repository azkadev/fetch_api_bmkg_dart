// ignore_for_file: non_constant_identifier_names
import 'dart:convert';



class InfoGempa {
  late Map rawData;

  
  InfoGempa(this.rawData);


  
  InfoGempaInfogempa get Infogempa {
    try {
      if (rawData["Infogempa"] is Map == false){
        return InfoGempaInfogempa({}); 
      }
      return InfoGempaInfogempa(rawData["Infogempa"] as Map);
    } catch (e) {  
      return InfoGempaInfogempa({}); 
    }
  }


  /// return original data json
  Map toMap() {
    return rawData;
  }

  /// return original data json
  Map toJson() {
    return rawData;
  }

  /// return string data encode json original data
  @override
  String toString() {
    return json.encode(rawData);
  }
}





class InfoGempaInfogempa {
  late Map rawData;

  
  InfoGempaInfogempa(this.rawData);

  
  List<InfoGempaInfogempaGempa?>? get gempa {
    try {
      if (rawData["gempa"] is List == false){
        return null;
      }
      return (rawData["gempa"] as List).map((e) => InfoGempaInfogempaGempa(e as Map)).toList().cast<InfoGempaInfogempaGempa>();
    } catch (e) {
      return null;
    }
  }


  /// return original data json
  Map toMap() {
    return rawData;
  }

  /// return original data json
  Map toJson() {
    return rawData;
  }

  /// return string data encode json original data
  @override
  String toString() {
    return json.encode(rawData);
  }
}





class InfoGempaInfogempaGempa {
  late Map rawData;

  
  InfoGempaInfogempaGempa(this.rawData);


  
  String? get Tanggal {
    try {
      if (rawData["Tanggal"] is String == false){
        return null;
      }
      return rawData["Tanggal"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get Jam {
    try {
      if (rawData["Jam"] is String == false){
        return null;
      }
      return rawData["Jam"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get DateTime {
    try {
      if (rawData["DateTime"] is String == false){
        return null;
      }
      return rawData["DateTime"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get Coordinates {
    try {
      if (rawData["Coordinates"] is String == false){
        return null;
      }
      return rawData["Coordinates"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get Lintang {
    try {
      if (rawData["Lintang"] is String == false){
        return null;
      }
      return rawData["Lintang"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get Bujur {
    try {
      if (rawData["Bujur"] is String == false){
        return null;
      }
      return rawData["Bujur"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get Magnitude {
    try {
      if (rawData["Magnitude"] is String == false){
        return null;
      }
      return rawData["Magnitude"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get Kedalaman {
    try {
      if (rawData["Kedalaman"] is String == false){
        return null;
      }
      return rawData["Kedalaman"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get Wilayah {
    try {
      if (rawData["Wilayah"] is String == false){
        return null;
      }
      return rawData["Wilayah"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get Potensi {
    try {
      if (rawData["Potensi"] is String == false){
        return null;
      }
      return rawData["Potensi"] as String;
    } catch (e) {
      return null;
    }
  }


  /// return original data json
  Map toMap() {
    return rawData;
  }

  /// return original data json
  Map toJson() {
    return rawData;
  }

  /// return string data encode json original data
  @override
  String toString() {
    return json.encode(rawData);
  }
}

