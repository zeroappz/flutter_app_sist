class RegistrationModel {
  late String name;
  late String phone;
  late String email;
  late String password;
  late bool status;

  RegistrationModel(
      this.name, this.phone, this.email, this.password, this.status);

  RegistrationModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    phone = json['phone'];
    email = json['email'];
    password = json['password'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['phone'] = phone;
    data['email'] = email;
    data['password'] = password;
    data['status'] = status;
    return data;
  }
}
