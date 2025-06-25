# user_manager_app
# User Manager App

A command-line Dart application that fetches user data from the JSONPlaceholder API and provides options to display all user details, show details by user ID, sort users by ID, and sort users by city.

**Author**: Nidhi Dhankhar  
**Course**: BCA Shift 2

## Features
- **Fetch Data**: Retrieves user data from `https://jsonplaceholder.typicode.com/users` using HTTP requests.
- **Display Options**: Interactive menu with the following options:
  1. Show all user details (ID, name, email, city, phone, company).
  2. Show details of a user by ID.
  3. Sort users by ID.
  4. Sort users by city.
  5. Exit the application.
- **Error Handling**: Handles API errors (e.g., 403 Forbidden) and invalid user inputs.

## Prerequisites
- **Dart SDK**: Version 3.8.1 or higher.
- **Git**: For cloning the repository.
- **Internet Connection**: Required to fetch data from the JSONPlaceholder API.

## Setup
1. **Install Dart SDK**:
   - Download and install from [dart.dev/get-dart](https://dart.dev/get-dart).
   - Verify installation:
     ```bash
     dart --version
     ```
2. **Clone the Repository**:
   ```bash
   git clone https://github.com/your-username/user_manager_app.git
   cd user_manager_app
   ```
   Replace `your-username` with your GitHub username.
3. **Install Dependencies**:
   - Ensure `pubspec.yaml` includes:
     ```yaml
     dependencies:
       http: ^1.2.4
     ```
   - Run:
     ```bash
     dart pub get
     ```
4. **Run the Application**:
   ```bash
   dart lib/user_manager_app.dart
   ```

## Project Structure
```
user_manager_app/
├── lib/
│   └── user_manager_app.dart  # Main application code
├── pubspec.yaml              # Dependency configuration
├── .gitignore                # Ignored files
├── README.md                 # This file
```

## Usage
1. Run the program:
   ```bash
   dart lib/user_manager_app.dart
   ```
2. Follow the menu prompts:
   ```
   ==========================
       User Manager Menu
   ==========================
   1. Show all user details
   2. Show user by ID
   3. Sort users by ID
   4. Sort users by city
   5. Exit
   Enter your choice:
   ```
3. Select an option (1–5):
   - **1**: Displays all user details (ID, name, email, city, phone, company).
   - **2**: Prompts for a user ID and shows details for that user.
   - **3**: Displays users sorted by ID.
   - **4**: Displays users sorted by city.
   - **5**: Exits the program.

## Example Output
If the API fetch succeeds:
```
Fetched 10 users
==============================
    User Manager Menu
==============================
1. Show all user details
2. Show user by ID
3. Sort users by ID
4. Sort users by city
5. Exit
Enter your choice: 1

Showing all users:
------------------------
ID: 1
Name: Leanne Graham
Email: Sincere@april.biz
City: Gwenborough
Phone: 1-770-736-8031 x56442
Company: Romaguera-Crona
...
```

## Troubleshooting
- **403 Forbidden Error**:
  - If you see `Error fetching users: Failed to load data. Status code: 403`:
    - Test the API in a browser: `https://jsonplaceholder.typicode.com/users`.
    - Try a different network (e.g., mobile hotspot) to rule out network restrictions.
    - Contact your network administrator for proxy settings if on a restricted network (e.g., college Wi-Fi).
  - Debug output is included in the code to show the response status and body.
- **Dependencies**:
  - Ensure the `http` package is installed (`dart pub get`).
- **File Path**:
  - Run the app from the project root using `dart lib/user_manager_app.dart`.

## Dependencies
- `http: ^1.2.4` for making HTTP requests to the API.

## Notes
- The app uses the JSONPlaceholder API (`https://jsonplaceholder.typicode.com/users`) for testing.
- If the API is blocked (e.g., 403 error), you can test with a local JSON file as a workaround (see code comments or contact the author).
- The code includes debug prints (`Response status` and `Response body`) to help diagnose API issues.

## License
MIT License (add a `LICENSE` file if desired).

## Contributing
Feel free to fork the repository, make improvements, and submit pull requests.
