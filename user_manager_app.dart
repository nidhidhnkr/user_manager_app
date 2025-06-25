//Nidhi dhankhar, bca shift2

// 1.fetch data from api(url uri concept)
// 2.show user input options(display function)
//3. for choice1: print all user details
// 4. choice3 and 4 sort by id and sort display by city

import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:user_manager_app/user_manager_app.dart' as user_manager_app;

void main() async {
  await runManager();
}

Future<void> runManager() async {
  List<Map<String, dynamic>> users = []; //user data empty list
  bool isRunning = true;

  try {
    users = await fetchUsers();
    //fetching in this function seprately
    print("fetched user: ${users.length}");
  } catch (e) {
    print("error fetching users: $e");
    return;
  }

  while (isRunning) {
    displayMenu(); //user input options
    String? choice = stdin.readLineSync(); //read user input(choice)
    switch (choice) {
      case '1':
        print('\nShowing all users:');
        if (users.isEmpty) {
          print('No users available.');
        } else {
          for (var user in users) {
            printUserDetails(user);
          }
        }
        break;
      case '2':
        print("not configured yet"); //not done yet
        break;
      case '3':
        print("not configured yet");
        break;
      case '4':
        print('\nexited');
        isRunning = false;
        break;
      default:
        print('\nInvalid choice');
    }

    if (isRunning) {
      print('\nPress Enter to continue...');
      stdin.readLineSync();
    }
  }
}

void displayMenu() {
  print('\n${'=' * 26}');
  print(' \n  User Manager Menu   ');
  print('\n${'=' * 26}');
  print('1. Show all usernames');
  print('2. Show details of a user by ID');
  print('3. Filter users by city');
  print('4. Exit');
  print('Enter your choice: ');
}

void printUserDetails(Map<String, dynamic> user) {
  print('Name: ${user['name']} Email: ${user['email']}');
}

//fetch user returns list of users from api
Future<List<Map<String, dynamic>>> fetchUsers() async {
  final url = Uri.parse('https://jsonplaceholder.typicode.com/users');

  try {
    final response = await http.get(
      url,
      headers: {
        'User-Agent': 'Dart/3.4 (user_manager_app)',
        'Accept': 'application/json',
      },
    );

    //the given api is blocked without headerss

    if (response.statusCode == 200) {
      List<dynamic> users = jsonDecode(response.body);
      return List<Map<String, dynamic>>.from(users);
    } else {
      throw Exception(
        'Failed to load data. Status code: ${response.statusCode}',
      );
    }
  } catch (e) {
    print('Error: $e');
    return [];
  }
}
