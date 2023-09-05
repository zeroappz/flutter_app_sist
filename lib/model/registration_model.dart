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
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = this.name;
    data['phone'] = this.phone;
    data['email'] = this.email;
    data['password'] = this.password;
    data['status'] = this.status;
    return data;
  }
}
