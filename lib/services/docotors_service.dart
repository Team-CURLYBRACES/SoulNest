import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:soulnest/models/doctor.dart';

class DoctorsService {
  Future<List<Doctor>> getAllDoctors() async {
    const url = 'https://mocki.io/v1/f8cb48cd-376e-429c-9286-7c7e7c7ac85c';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as List;
      final doctors = json.map((e) {
        return Doctor(
          name: e['name'],
          specialisation: e['specialisation'],
          description: e['description'],
          experience: e['experience'],
          charge: e['charge'],
          image: e['image'],
        );
      }).toList();
      return doctors;
    }

    throw Exception('Failed to load doctors');
  }
}
