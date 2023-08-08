import 'dart:io';

/// Without Return type and Without Parameters Function
function(var x, var y) {
  print("Inside External Function");
  // print(x + y);
  return x + y;
}

/// Change the Theme
dynamic changeDarkTheme(String bg, String fontColor, String themeName) {
  print("You are about to change it to Dark Theme");
  sleep(const Duration(seconds: 6));
  print("Theme Changed");
}

dynamic changeLightTheme(bg, fontColor, themeName) {
  print("You are about to change it to Light Theme");
  sleep(const Duration(seconds: 6));
  print("Theme Changed");
}

/// Returning Map Object
Map<String, dynamic> getAddress() {
  Map<String, dynamic> fetchAddress = {
    "status": 200,
    "data": {
      "first_name": "Praveen",
      "last_name": "Kumar",
      "address": {
        "home": {
          "address_line_1": "ABC Street",
          "address_line_2": "XYZ Colony",
          "city": "Bangalore",
          "state": "Karnataka",
          "pin_code": 560001
        },
        "work": {
          "address_line_1": "ABC Street",
          "address_line_2": "XYZ Colony",
          "city": "Bangalore",
          "state": "Karnataka",
          "pin_code": 560001
        }
      },
      "email": "pravileaf@gmail.com",
      "phone_numbers": ["9047048344", "8190081187"]
    }
  };

  bool isPaid = false;

  if (isPaid == true) {
    return fetchAddress;
  } else {
    return {};
  }
}

/// Optional Parameters
functionOptionalObject(name, age, phone, [address, email]) {
  print("Function Positional Parameters");

  if (email != null) {
    print("Name: $name Age: $age Phone: $phone Email: $email");
  } else if (address != null) {
    print("Name: $name Age: $age Phone: $phone Address: $address");
  } else if (email != null && address != null) {
    print(
        "Name: $name Age: $age Phone: $phone Address: $address Email: $email");
  } else {
    print("Name: $name Age: $age Phone: $phone");
  }
}

/// Positional & Default Parameters/
functionPositionalObject(name,
    {age = 18, college = 'SIST', companyName = 'Algoxfusion'}) {
  print("Name: $name Age: $age College: $college Company: $companyName");
}
