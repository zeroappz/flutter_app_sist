import '../../app_lib/app_lib.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
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
                        const SizedBox(
                          height: 40,
                        ),
                        const Center(
                          child: Text(
                            'FORGOT PASSWORD',
                            style: TextStyle(
                                color: ColorConstants.primaryColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Text(
                            'Confirm your email and we will send the instruction',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
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
                        const SizedBox(
                          height: 20,
                        ),
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
                                  borderRadius: BorderRadius.circular(10),
                                )),
                              ),
                              onPressed: () {
                                Fluttertoast.showToast(
                                    msg: 'Click reset password',
                                    toastLength: Toast.LENGTH_SHORT);
                              },
                              child: const Padding(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Text(
                                  'RESET PASSWORD',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              )),
                        ),
                      ],
                    )),
              ),
              const SizedBox(
                height: 50,
              ),
              // create sign up link
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) {
                          return const SignInScreen();
                        },
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Icon(
                        Icons.arrow_back,
                        size: 16,
                        color: ColorConstants.primaryColor,
                      ),
                      Text(
                        ' Back to login',
                        style: TextStyle(
                            color: ColorConstants.primaryColor,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          )
        ],
      ),
    );
  }
}
