```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON array
      final jsonData = jsonDecode(response.body);
      // Accessing the first element of the JSON array which might not exist if array is empty
      final firstElement = jsonData[0]; 
      print(firstElement); // potential error if jsonData is empty
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```