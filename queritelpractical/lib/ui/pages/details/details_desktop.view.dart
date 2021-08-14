part of details_view;

class _DetailsDesktop extends StatelessWidget {
  final DetailsController detailsController;
  const _DetailsDesktop({Key? key, required this.detailsController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 100,
            child: Container(
              color: Colors.blue[100],
            ),
          ),
          Positioned(
              top: 30,
              left: 30,
              right: 30,
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(Icons.arrow_back)),
                ],
              )),
          Positioned(
              top: 100,
              left: 30,
              right: 30,
              bottom: 0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.network(
                    detailsController.imageURL,
                    height: 300,
                    width: 300,
                  ),
                  Column(
                    children: [
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: width * 0.42,
                          child: Text(
                            detailsController.name,
                            style: MyTheme.textTheme.headline2,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: width * 0.42,
                          child: Text(
                            detailsController.description,
                            style: MyTheme.textTheme.bodyText1,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
