```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the data here
    } else {
      // Handle error here
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // This catch block will only catch exceptions thrown within the try block
    print('Error fetching data: $e');
    // Handle error appropriately, perhaps re-throw
    rethrow;
  }
}
```