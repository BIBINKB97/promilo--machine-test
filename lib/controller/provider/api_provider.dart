import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:machine_test/view/widgets/bottom_navbar/navbar.dart';
import 'package:machine_test/controller/auth_controller/auth_controller.dart';
import 'package:machine_test/model/user_model.dart';

/// To Register the login AuthController in this provider class 
class ApiProvider extends ChangeNotifier {
  final _authController = AuthController(Dio());

  Future<void> postData(UserModel userModel, BuildContext context) async {
    try {
      await _authController.postData(userModel);

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.green,
          content: Text('Login successful'),
        ),
      );
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const BottomNavBar(),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.red,
          content: Text('Invalid ID or Password'),
        ),
      );
      
    }
  }
}
