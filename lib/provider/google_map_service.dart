// import 'dart:convert';

// import 'package:flutter_cab2/model/place_model.dart';
// import 'package:http/http.dart' as http;

// class GoogleMapServices {
//   final String sessionToken;

//   GoogleMapServices({this.sessionToken});

//   Future<List> getSuggestions(String query) async {
//     final String baseUrl =
//         '';
//     String type = 'establishment';
//     String url =
//         '';

//     print('Autocomplete(sessionToken): $sessionToken');

//     final http.Response response = await http.get(url);
//     final responseData = json.decode(response.body);
//     final predictions = responseData['predictions'];

//     List<Place> suggestions = [];

//     for (int i = 0; i < predictions.length; i++) {
//       final place = Place.fromJson(predictions[i]);
//       suggestions.add(place);
//     }

//     return suggestions;
//   }

//   Future<PlaceDetail> getPlaceDetail(String placeId, String token) async {
//     final String baseUrl =
//         '';
//     String url =
//     '';

//     print('Place Detail(sessionToken): $sessionToken');
//     final http.Response response = await http.get(url);
//     final responseData = json.decode(response.body);
//     final result = responseData['result'];

//     final PlaceDetail placeDetail = PlaceDetail.fromJson(result);
//     print(placeDetail.toMap());

//     return placeDetail;
//   }
// }
