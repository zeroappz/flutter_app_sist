import '../../app_lib/app_lib.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          // top blue background gradient
          Container(
            height: MediaQuery.of(context).size.height / 3.5,
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              ColorConstants.primaryColor,
              Colors.red,
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),
          // set your logo here
          Container(
              margin: EdgeInsets.fromLTRB(
                  0, MediaQuery.of(context).size.height / 20, 0, 0),
              alignment: Alignment.topCenter,
              child: Image.asset('assets/images/logo.png', height: 120)),
          ListView(
            children: <Widget>[
              // create form login
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 5,
                margin: EdgeInsets.fromLTRB(
                    32, MediaQuery.of(context).size.height / 3.5 - 72, 32, 0),
                color: Colors.white,
                child: Container(
                    margin: const EdgeInsets.fromLTRB(24, 0, 24, 20),
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          alignment: Alignment.topRight,
                          child: GestureDetector(
                              onTap: () {
                                Navigator.of(context, rootNavigator: true)
                                    .pop();
                              },
                              child: const Icon(
                                Icons.close,
                                color: ColorConstants.primaryColor,
                                size: 28,
                              )),
                        ),
                        const SizedBox(height: 10),
                        const Center(
                          child: Text(
                            'CONTACT US',
                            style: TextStyle(
                                color: ColorConstants.primaryColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextField(
                          decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey[600]!)),
                              enabledBorder: const UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFCCCCCC)),
                              ),
                              labelText: 'Name',
                              labelStyle: TextStyle(color: Colors.grey[700])),
                        ),
                        const SizedBox(height: 20),
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey[600]!)),
                              enabledBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: ColorConstants.primaryColor,
                                ),
                              ),
                              labelText: 'Email',
                              labelStyle: TextStyle(color: Colors.grey[700])),
                        ),
                        const SizedBox(height: 20),
                        TextField(
                          maxLines: null,
                          decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey[600]!)),
                              enabledBorder: const UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFCCCCCC)),
                              ),
                              labelText: 'Message',
                              labelStyle: TextStyle(color: Colors.grey[700])),
                        ),
                        const SizedBox(height: 40),
                        SizedBox(
                          width: double.maxFinite,
                          child: TextButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) =>
                                      ColorConstants.primaryColor,
                                ),
                                overlayColor: MaterialStateProperty.all(
                                    Colors.transparent),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(3.0),
                                )),
                              ),
                              onPressed: () {
                                Fluttertoast.showToast(
                                    msg: 'Click submit',
                                    toastLength: Toast.LENGTH_SHORT);
                              },
                              child: const Padding(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Text(
                                  'SUBMIT',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              )),
                        ),
                      ],
                    )),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                  margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  alignment: Alignment.topCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Fluttertoast.showToast(
                              msg: 'Click email',
                              toastLength: Toast.LENGTH_SHORT);
                        },
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                              Icons.email,
                              color: ColorConstants.primaryColor,
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Email'),
                                SizedBox(height: 5),
                                Text(
                                  'training@algofusion.org',
                                  style: TextStyle(
                                      color: ColorConstants.primaryColor,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Fluttertoast.showToast(
                              msg: 'Click phone number',
                              toastLength: Toast.LENGTH_SHORT);
                        },
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Icon(Icons.phone_android,
                                color: ColorConstants.primaryColor),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Phone'),
                                SizedBox(height: 5),
                                Text(
                                  '+91 904 7048 344',
                                  style: TextStyle(
                                    color: ColorConstants.primaryColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
              const SizedBox(
                height: 20,
              )
            ],
          )
        ],
      ),
    );
  }
}
