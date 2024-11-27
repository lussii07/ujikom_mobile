import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:galery_sekolah/models/post.dart'; // Ganti 'your_app' dengan nama proyek kamu

Future<List<Post>> fetchPostsByCategory(String kategori) async {
  final response = await http.get(Uri.parse('http://10.0.2.2:8000/api/posts'));

  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse
        .map((post) => Post.fromJson(post))
        .where((post) =>
            post.kategoriId ==
            (kategori == 'agenda' ? 3 : 1)) // asumsi kategori ID
        .toList();
  } else {
    throw Exception('Failed to load posts');
  }
}
