part of home_view;

class _HomeMobile extends StatelessWidget {
  final HomeController homeController;
  const _HomeMobile({Key? key, required this.homeController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: homeController.tabIndex,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            controller: homeController.controller,
            tabs: [
              Tab(text: 'Cat'),
              Tab(text: 'Dog'),
            ],
          ),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: (2.5 / 1),
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          //physics:BouncingScrollPhysics(),
          padding: EdgeInsets.all(10.0),
          children: homeController.tabIndex == 0 ? catpage() : dogpage(),
        ),
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
