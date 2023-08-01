import '../../app_lib/app_lib.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  /// Global Widget Instantiation
  GlobalWidgets globalWidget = GlobalWidgets();

  List<OnBoardModel> onBoardingList = [
    OnBoardModel("assets/images/onboard_1.jpg", "Prepared By Experts",
        "Lorem Ipsum description for our application to make it better"), // 0th Index
    OnBoardModel("assets/images/onboard_2.jpg", "Developed By Experts",
        "Lorem Ipsum description for our application to make it better"), // 1st Index
    OnBoardModel("assets/images/onboard_3.jpg", "Released By Experts",
        "Lorem Ipsum description for our application to make it better"), // 2nd Index
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          /// PageView to create dynamic pages
          PageView.builder(
            onPageChanged: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            itemCount: onBoardingList.length, // 3
            itemBuilder: (context, index) {
              return PageBuilderWidget(
                  title: onBoardingList[index].title, // title: 'Screen 1'
                  description: onBoardingList[index].description,
                  imgPath: onBoardingList[index].imgPath);
            },
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.1,
            left: MediaQuery.of(context).size.width * 0.4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                onBoardingList.length,
                (index) => buildDots(index),
              ),
            ),
          ),

          /// (0 < 3-1) => 2
          (currentIndex < onBoardingList.length - 1)
              ? Positioned(
                  bottom: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        child: const Text('Prev'),
                        onPressed: () {
                          debugPrint("Prev Button Pressed");
                        },
                      ),
                      ElevatedButton(
                        child: const Text('Next'),
                        onPressed: () {
                          debugPrint("Next Button Pressed");
                        },
                      ),
                    ],
                  ),
                )
              : Positioned(
                  bottom: MediaQuery.of(context).size.height * 0.2,
                  left: MediaQuery.of(context).size.width * 0.33,
                  child: globalWidget.customAppButton(context, 'Get Started'),
                ),
        ],
      ),
    );
  }

  AnimatedContainer buildDots(int index) {
    return AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        margin: const EdgeInsets.symmetric(
          horizontal: 5,
        ),
        height: 6.0,
        width: currentIndex == index ? 20.0 : 6.0,
        decoration: BoxDecoration(
          color:
              currentIndex == index ? ColorConstants.primaryColor : Colors.grey,
          borderRadius: BorderRadius.circular(4.0),
        ));
  }
}

/// PageBuilderWidget Class Widget helps you load the static to dynamic screen
class PageBuilderWidget extends StatefulWidget {
  const PageBuilderWidget(
      {super.key,
      required this.title,
      required this.imgPath,
      required this.description});
  final String title;
  final String description;
  final String imgPath;

  @override
  State<PageBuilderWidget> createState() => _PageBuilderWidgetState();
}

class _PageBuilderWidgetState extends State<PageBuilderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 15.0,
        right: 15.0,
        top: MediaQuery.of(context).size.height * 0.1,
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        /// Image
        Container(
          margin: const EdgeInsets.only(top: 20.0),

          /// EdgeInsets.all(), only()
          child: Image.asset(widget.imgPath),
        ),

        /// Empty Space
        const SizedBox(
          height: 20.0,
        ),

        /// Text Title
        Text(
          widget.title,
          style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        ),

        /// Empty Space
        const SizedBox(
          height: 20.0,
        ),

        /// Description
        Text(
          widget.description,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 20.0,
          ),
        ),
      ]),
    );
  }
}

/// Stack, Positioned, Conditions Check, List, Animation, Model
