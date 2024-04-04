import 'package:get/get.dart';
import 'package:http/http.dart' as http;
// import 'dart:convert';

const String url = "https://26.186.103.187:7500/api/user/register/v1";

class User {
  final String firstName;
  final String lastName;
  final String userName;
  final String email;
  final String phoneNumber;
  final int userState;
  final int age;
  final List<String> roles;
  final Address addresses;
  final String password;
  final String confirmPassword;

  User({
    required this.firstName,
    required this.lastName,
    required this.userName,
    required this.email,
    required this.phoneNumber,
    required this.userState,
    required this.age,
    required this.roles,
    required this.addresses,
    required this.password,
    required this.confirmPassword,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      firstName: json['firstName'],
      lastName: json['lastName'],
      userName: json['userName'],
      email: json['email'],
      phoneNumber: json['phoneNumber'] as String,
      userState: json['userState'] as int,
      age: json['age'] as int,
      roles: List<String>.from(json['roles']),
      addresses: Address.fromJson(json['addresses']),
      password: json['password'] as String,
      confirmPassword: json['confirmPassword'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'userName': userName,
      'email': email,
      'phoneNumber': phoneNumber,
      'userState': userState,
      'age': age,
      'roles': roles,
      'addresses': addresses.toJson(),
      'password': password,
      'confirmPassword': confirmPassword,
    };
  }
}

class Address {
  final String location;
  final double longitude;
  final double latitude;
  final String description;

  Address({
    required this.location,
    required this.longitude,
    required this.latitude,
    required this.description,
  });

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      location: json['location'] as String,
      longitude: json['longitude'] as double,
      latitude: json['latitude'] as double,
      description: json['description'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'location': location,
      'longitude': longitude,
      'latitude': latitude,
      'description': description,
    };
  }
}

//
// Import GetX
// extends GetxController {
class UserController {
  // Initialize an empty user (you can set default values if needed)
  final address =
      Address(location: '', longitude: 12.24, latitude: 45.23, description: '');
  final user = User(
          firstName: '',
          lastName: '',
          userName: '',
          email: '',
          phoneNumber: '',
          userState: 1,
          age: 20,
          roles: ['user'],
          addresses: Address(
              location: '', longitude: 12.24, latitude: 45.23, description: ''),
          password: '',
          confirmPassword: ''

          // ... other fields
          )
      .obs; // Make it observable
  // Method to create a new user
  Future<dynamic> createUser() async {
    print(user.value);

    print(user.toJson());
    print(user.value);
    // final response = await http.post(
    //   Uri.parse('https://26.186.103.187:7500/api/user/register/v1'),
    //   body: user.value.toJson(), // Convert user data to JSON
    // );
    // print(response);
    // print(response.body);
    // if (response.statusCode == 201) {
    //   // User created successfully
    //   print('User created successfully!');
    //   // You can handle other logic here (e.g., navigation, showing a success message)
    // } else {
    //   // Handle API error (e.g., show an error message)
    //   print('Error creating user: ${response.body}');
    // }
    try {
      // Make your API call here (e.g., using http package)
      // Replace the URL with your actual API endpoint
      Map<String, String> requestHeaders = {
        'Content-type': 'application/json',
        // 'Accept': 'application/json',
        //'Authorization': '<Your token>'
      };

      final response = await http.post(
        Uri.parse('https://26.186.103.187:7500/api/user/register/v1'),
        headers: {'Accept': 'application/json'},
        body: user.value.toJson(), // Convert user data to JSON
      );
      print(response);
      print(response.body);
      if (response.statusCode == 201) {
        // User created successfully
        print('User created successfully!');
        // You can handle other logic here (e.g., navigation, showing a success message)
      } else {
        // Handle API error (e.g., show an error message)
        print('Error creating user: ${response.body}');
      }
    } catch (e) {
      // Handle exceptions (e.g., network errors)
      print('Exception while creating user: $e');
    }
  }
}
