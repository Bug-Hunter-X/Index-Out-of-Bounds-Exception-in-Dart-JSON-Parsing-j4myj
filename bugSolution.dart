```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      //Check if jsonData is a list and not empty
      if(jsonData is List && jsonData.isNotEmpty){
        final firstElement = jsonData[0];
        print(firstElement);
      } else {
        print("JSON array is empty or not a list");
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```