```dart
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the data here
    } else {
      // Handle error explicitly
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } on SocketException catch (e) {
    print('Socket exception: $e');
  } on TimeoutException catch (e) {
    print('Timeout exception: $e');
  } catch (e) {
    print('Generic error: $e');
    // Consider rethrowing for higher-level handling
    //rethrow;
  }
}
```