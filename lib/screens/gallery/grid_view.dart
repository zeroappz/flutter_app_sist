import 'package:flutter_app/app_lib/app_lib.dart';

class BasicGridView extends StatelessWidget {
  const BasicGridView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> _imgList = ImagePath.imgList;

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
      ),
      itemCount: _imgList.length,
      itemBuilder: (BuildContext context, int index) {
        /// Any Widget can be converted into an action performing widget using
        /// InkWell & GestureDetector
        return GestureDetector(
          child: Container(
            height: 100.0,
            margin: EdgeInsets.zero,
            child: Image(
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
              image: NetworkImage(
                _imgList[index],
              ),
            ),
          ),
          onTap: () {
            debugPrint(
                "Gesture Detected with OnTap action.. ${_imgList[index]} is getting opened");
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) {
                  return ImageDetailsScreen(_imgList[index]);
                },
              ),
            );
          },
        );
      },
    );
  }
}
