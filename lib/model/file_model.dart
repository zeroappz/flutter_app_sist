class FileModel {
  List<Files>? files;
  String? folder;

  FileModel(this.files, this.folder);

  /// From Json
  FileModel.fromJson(Map<String, dynamic> json) {
    files = json['files'].cast<String>();
    folder = json['folder'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['files'] = this.files;
    data['folderName'] = this.folder;
    return data;
  }
}

class Files {
  String? mimeType;
  String? size;
  String? title;
  String? path;

  Files({this.mimeType, this.size, this.title, this.path});

  Files.fromJson(Map<String, dynamic> json) {
    mimeType = json['mimeType'];
    size = json['size'];
    title = json['title'];
    path = json['path'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mimeType'] = this.mimeType;
    data['size'] = this.size;
    data['title'] = this.title;
    data['path'] = this.path;
    return data;
  }
}



/*

{
  "files": [
    [
      ".pdf",
      "256kb",
      "document",
      "/data/com.whatsapp.shared/WhatsApp/Media/.Statuses/"
    ],
    [
      ".jpg",
      "256kb",
      "document",
      "/data/com.whatsapp.shared/WhatsApp/Media/.Statuses/"
    ]
  ],
  "folder": "DCIM"
}

*/