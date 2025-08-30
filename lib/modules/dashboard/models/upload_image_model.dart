class UploadImageModel {
  final String path;
  final String id;

  UploadImageModel({required this.path, required this.id});

  @override
  bool operator ==(covariant UploadImageModel other) => other.id == id;

  @override
  int get hashCode => id.hashCode;
}
