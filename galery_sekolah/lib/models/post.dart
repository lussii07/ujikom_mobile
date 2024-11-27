class Post {
  final int id;
  final String judul;
  final String isi;
  final int kategoriId;
  final String status;
  final String createdAt;

  Post({
    required this.id,
    required this.judul,
    required this.isi,
    required this.kategoriId,
    required this.status,
    required this.createdAt,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      judul: json['judul'],
      isi: json['isi'],
      kategoriId: json['kategori_id'],
      status: json['status'],
      createdAt: json['created_at'],
    );
  }
}
