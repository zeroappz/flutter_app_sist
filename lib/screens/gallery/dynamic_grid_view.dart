import 'package:flutter_app/app_lib/app_lib.dart';

class DynamicGridView extends StatefulWidget {
  const DynamicGridView({super.key});

  @override
  State<DynamicGridView> createState() => _DynamicGridViewState();
}

class _DynamicGridViewState extends State<DynamicGridView> {
  final List<String> _imgList = ImagePath.imgList;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverGrid(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return GestureDetector(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
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
                  // debugPrint(
                  //     "Gesture Detected with OnTap action.. ${_imgList[index]} is getting opened");
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
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 8,
          ),
        )
      ],
    );
  }
}
