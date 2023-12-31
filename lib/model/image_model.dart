class ImageModel {
  List<String>? files;
  String? folderName;

  ImageModel({this.files, this.folderName});

  ImageModel.fromJson(Map<String, dynamic> json) {
    files = json['files'].cast<String>();
    folderName = json['folderName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['files'] = files;
    data['folderName'] = folderName;
    return data;
  }
}
