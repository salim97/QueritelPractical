part of home_view;

class _HomeDesktop extends StatelessWidget {
  final HomeController homeController;
  const _HomeDesktop({Key? key, required this.homeController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  MyNavBarLogo(
                    height: 40,
                    onTap: () {},
                  ),
                  SizedBox(width: 50),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.0),
                    child: TextButton(
                      onPressed: () {
                        homeController.changeTabIndex(0);
                      },
                      child: Text(
                        "Cats",
                        style: MyTheme.textTheme.headline6!
                            .copyWith(fontWeight: homeController.tabIndex == 0 ? FontWeight.w700 : FontWeight.w100, color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.0),
                    child: TextButton(
                      onPressed: () {
                        homeController.changeTabIndex(1);
                      },
                      child: Text(
                        "Dogs",
                        style: MyTheme.textTheme.headline6!
                            .copyWith(fontWeight: homeController.tabIndex == 1 ? FontWeight.w700 : FontWeight.w100, color: Colors.black),
                      ),
                    ),
                  ),
                ],
              )),
          Positioned(
              top: 100,
              left: 30,
              right: 30,
              bottom: 0,
              child: GridView.count(
                crossAxisCount: 3,
                childAspectRatio: (2.5 / 1),
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                //physics:BouncingScrollPhysics(),
                padding: EdgeInsets.all(10.0),
                children: homeController.tabIndex == 0 ? catpage() : dogpage(),
              ))
        ],
      ),
    );
  }

  catpage() {
    return homeController.catService.list.map((data) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: MyCard(
          imageURL: data.photo,
          name: data.name,
          onPressed: () {
            Get.to(DetailsView(model: data));
          },
        ),
      );
    }).toList();
  }

  dogpage() {
    return homeController.dogService.list.map((data) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: MyCard(
          imageURL: data.photo,
          name: data.name,
          onPressed: () {
            Get.to(DetailsView(model: data));
          },
        ),
      );
    }).toList();
  }
}
