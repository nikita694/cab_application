// import 'dart:convert';
// import 'package:http/http.dart' as http; 

// class Taxirate {
//    final String name; 
//    final String description;
//    final int price;
//    final String image; 
   
//    Taxirate(this.name, this.description, this.price, this.image); 
//    factory Taxirate.fromMap(Map<String, dynamic> json) { 
//       return Taxirate( 
//          json['name'], 
//          json['description'], 
//          json['price'], 
//          json['image'], 
//       );
//    }
// }

// List<Taxirate> parseProducts(String responseBody) { 
//    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>(); 
//    return parsed.map<Taxirate>((json) => Taxirate.fromjson(json)).toList(); 
// } 
// Future<List<Taxirate>> fetchProducts() async { 
//    final response = await http.get(''); 
//    if (response.statusCode == 200) { 
//       return parseProducts(response.body); 
//    } else { 
//       throw Exception('Unable to fetch products from the REST API');
//    } 
// }