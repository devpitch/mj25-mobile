class UploadRequestResponse {
  final List<FileResponse>? uploadRequest;
  final String? typename;

  UploadRequestResponse({this.uploadRequest, this.typename});

  factory UploadRequestResponse.fromJson(Map<String, dynamic> json) {
    return UploadRequestResponse(
      uploadRequest: (json['uploadRequest'] as List<dynamic>?)
          ?.map((e) => FileResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      typename: json['__typename'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'uploadRequest': uploadRequest?.map((e) => e.toJson()).toList(),
      '__typename': typename,
    };
  }
}

class FileResponse {
  final String? id;
  final String? url;
  final String? uploadUrl;
  final bool? isGeneral;
  final bool? isConfirmed;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final List<dynamic>? tags;
  final String? typename;

  FileResponse({
    this.id,
    this.url,
    this.uploadUrl,
    this.isGeneral,
    this.isConfirmed,
    this.createdAt,
    this.updatedAt,
    this.tags,
    this.typename,
  });

  factory FileResponse.fromJson(Map<String, dynamic> json) {
    return FileResponse(
      id: json['_id'] as String?,
      url: json['url'] as String?,
      uploadUrl: json['uploadUrl'] as String?,
      isGeneral: json['isGeneral'] as bool?,
      isConfirmed: json['isConfirmed'] as bool?,
      createdAt: json['createdAt'] != null
          ? DateTime.parse(json['createdAt'])
          : null,
      updatedAt: json['updatedAt'] != null
          ? DateTime.parse(json['updatedAt'])
          : null,
      tags: json['tags'] != null ? List<dynamic>.from(json['tags']) : null,
      typename: json['__typename'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'url': url,
      'uploadUrl': uploadUrl,
      'isGeneral': isGeneral,
      'isConfirmed': isConfirmed,
      'createdAt': createdAt?.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
      'tags': tags,
      '__typename': typename,
    };
  }
}
