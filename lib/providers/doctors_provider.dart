import 'package:flutter/material.dart';
import 'package:soulnest/models/doctor.dart';
import 'package:soulnest/services/docotors_service.dart';

class DoctorsProvider extends ChangeNotifier {
  final _doctorService = DoctorsService();
  bool isLoading = false;
  List<Doctor> _doctors = [];
  List<Doctor> get doctors => _doctors;

  Future<void> getAllDoctors() async {
    isLoading = true;
    notifyListeners();

    final response = await _doctorService.getAllDoctors();

    _doctors = response;
    isLoading = false;
    notifyListeners();
  }

  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void setIndex(int newIndex) {
    _currentIndex = newIndex;
    notifyListeners();
  }
}
