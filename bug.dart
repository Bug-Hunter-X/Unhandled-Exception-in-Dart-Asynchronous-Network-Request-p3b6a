```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the data here
      final data = jsonDecode(response.body);
      // ...
    } else {
      // Handle error here. This might be missing in your code
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // This is crucial to handle potential exceptions during network requests
    print('Error fetching data: $e');
    // Consider rethrowing the error or handling it appropriately based on your app logic
    rethrow; // Or handle it as needed
  }
}
```