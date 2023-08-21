/// Map is nothing a Key:Value pair based Data Structure
/// JSON
main() {
  /// Generic Map Oj=bject
  var mapVarObj = {};

  /// Type Specified Map Object
  Map<String, dynamic> mapObject = {};

  /// Add key:value pairs
  mapVarObj["first_name"] = "Praveen";
  mapVarObj["last_name"] = "kumar";
  mapVarObj["email"] = "pravileaf@gmail.com";
  mapVarObj["phone_numbers"] = ["9047048344", "8190081187"];

  /// Get value by key
  // print(mapVarObj);

  mapObject["first_name"] = "Praveen";
  mapObject["last_name"] = "kumar";
  mapObject["email"] = "pravileaf@gmail.com";
  mapObject["phone_numbers"] = ["9047048344", "8190081187"];
  mapObject["address"] = {
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
  };

  /// Accessing the mapObject
  // print(mapObject);

  /// Get value by key using anonymous function
  mapObject.forEach((key, value) {
    // print("${key} : ${value}");
  });

  /// Check if key exists
  // bool isKeyExists = mapObject.containsKey("first_name");
  bool isKeyExists = mapVarObj.containsKey("address");
  addAddressBeforeOrder(isKeyExists, mapVarObj);
  // print(isKeyExists);

  /// Map.from()
  // Creates map from Iterable - COnverting any object into Map
  List<String> keys = ["first_name", "last_name", "email", "address"];
  List<String> values = [
    "Praveen",
    "kumar",
    "pravileaf@gmail.com",
    "Bangalore"
  ];
  Map<String, dynamic> mapFromIterable = Map.fromIterables(keys, values);
  print(mapFromIterable);
  print(mapFromIterable.remove("email"));
  print(mapFromIterable);

  /// Cascading Map Objects
  var youtubeHistory = {
    "comment_1": {"user_id": 1, "desc": "Worst Video Explanation"}
  };
  var facebookHistory = {
    "comment_2": {"user_id": 100, "desc": "Par Level Video Explanation"}
  };
  var instagramHistory = {
    "comment_3": {"user_id": 102, "desc": "Great Video Explanation"}
  };
  Map<String, dynamic> output =
      cascadingObjects(youtubeHistory, facebookHistory, instagramHistory);
  if (output.isNotEmpty) {
    print("Output os going to be printed....");
    print(output);
  } else {
    print("No Data Available");
  }
}

/// [addAddressBeforeOrder] function to check the address status
addAddressBeforeOrder(bool keyStatus, var mapVarObj) {
  print("inside the function");
  if (keyStatus) {
    print("Proceed to the checkout");
    // print("His name is ${mapObject["first_name"]} ${mapObject["last_name"]}");
  } else {
    // if(keyStatus == false){
    //   print("Proceed to the checkout");
    // }
    // print("Key not found");
    print("Address not found");
    var address = {
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
    };
    mapVarObj["address"] = address;
    print("Address added");
    // print(mapVarObj["address"]);
    print(mapVarObj.containsKey("address"));

    /// Navigating to some screen & asked you to add the address
    addAddressBeforeOrder(mapVarObj.containsKey("address"), mapVarObj);
  }
}

/// cascadingObjects
Map<String, dynamic> cascadingObjects(Map<String, dynamic> obj1,
    Map<String, dynamic> obj2, Map<String, dynamic> obj3) {
  Map<String, dynamic> cascadedMap = {...obj1, ...obj2, ...obj3};
  return cascadedMap;
}
