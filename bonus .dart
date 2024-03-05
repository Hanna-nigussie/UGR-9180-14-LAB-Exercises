import 'dart:async';
import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> main() async {
  final List<String> urls = [
    'https://hanna.com/file1.txt',
    'https://nigussie.com/file2.txt',
    'https://mitiku.com/file3.txt',
  ];

  final List<Future<void>> futures = [];
  final httpClient = http.Client();

  for (var url in urls) {
    futures.add(downloadFile(httpClient, url));
  }

  try {
    await Future.wait(futures);
    print('All files downloaded successfully.');
  } catch (e) {
    print('Error downloading files: $e');
  } finally {
    httpClient.close();
  }
}

Future<void> downloadFile(http.Client httpClient, String url) async {
  final file = File(url.split('/').last);
  final response = await httpClient.get(Uri.parse(url));

  final contentLength = response.contentLength ?? -1;
  int downloadedBytes = 0;

  final List<int> bytes = [];
  response.bodyBytes.forEach((byte) {
    downloadedBytes += 1;
    bytes.add(byte);
    print(
        'Downloading ${file.path}: ${(downloadedBytes / contentLength * 100).toStringAsFixed(2)}%');
  });

  await file.writeAsBytes(bytes);
  print('Download of ${file.path} complete.');
}
