import 'package:flutter_app/app_lib/app_lib.dart';

class StaggeredGridView extends StatefulWidget {
  const StaggeredGridView({super.key});

  @override
  State<StaggeredGridView> createState() => _StaggeredGridViewState();
}

class _StaggeredGridViewState extends State<StaggeredGridView> {
  final List<String> _imgList = ImagePath.imgList;

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 5,
      itemCount: _imgList.length,
      itemBuilder: (BuildContext context, index) {
        var height = Random().nextInt(200) + 150;
        return GestureDetector(
          child:Card(
          elevation: (Random().nextInt(20) + 10).toDouble(),
          // shadowColor: Colors.lightGreenAccent.withOpacity(0.2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          shadowColor: Colors.pinkAccent,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Image(
              height: height.toDouble(),
              fit: BoxFit.cover,
              image: NetworkImage(
                _imgList[index],
              ),
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
