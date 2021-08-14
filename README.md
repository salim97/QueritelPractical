# queritelpractical

Flutter web assessment, 2021-08-14

## Design pattern used in this project

- [x] dependency injection
- [x] singleton 
- [x] MVC or MVVM ( depend on how you look to it)

## features
- [x] responsive UI
- [x] clean code for future maintenance
- [x] easy to export service and model from this app to mobile app using flutter packages OR Windows Junction ( to mirror common folder in other project )

## file structure
files in lib folder are structured in this way

| dart files  | Used for |
| ------------- | ------------- |
| X.model.dart  | data modeling from and to JSON, and to keep all information in one class  |
| X.service.dart  | to communicate with external functions( Camera, File system, REST API, GraphQL) |
| X.controller.dart  |  business logic for target page ( any functionality related to UI, also to use service functionality  ) |
| X.view.dart  |  to display element on UI |
| X.widget.dart  |  custom UI component |

## explaining source code

i used Getx to get some design pattern ready made out of the box, i usually use it for small up to medium size application, instead of BLOC ( it generate to much boilerplate code)

inside lib folder there is 3 subfolders 
app for class used by the app in general like theme class ( dark mode, light mode ...etc)

common folder contains model + service class used by web app and mobile app ( in order to share it with android in the future)

ui folder contains code related to UI
for each X.view.dart there is X.controller.dart file ( some flutter developer prefer to name it X.viewmodel.dart ...) to separate dart code related to UI from dart code related to business logic related to page and data flow between UI and services

inside initial.binding.dart you will find dependency injection


```
class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DogService>(() => DogServiceImpl());
    // Get.lazyPut<DogService>(() => DogServiceFake());
    Get.lazyPut<CatService>(() => CatServiceImpl());
    // Get.lazyPut<CatService>(() => CatServiceFake());
  }
}
```

i also split code for mobile screen from desktop screen using responsive_builder library

check home_desktop.view.dart and home_mobile.view.dart

for X.model.dart i used json_serializable library to generate boilerplate code fromJSON and toJSON into separated file "X.model.g.dart" and then hide it from project tree using ".vscode/settings.json"
```
{
    "files.exclude": {
        "**/*.g.dart": true
    },
}
```
i don't like to ton of boilerplate code in my vscode project tree
we can easily swape between real data provider ( REST API ) with fake data provider
in development phase i usually use fake service to provide me readymade data no API call, so i can focus on UI code only
and then swape it with real service call to focus only on error thrown by API communication




# [Showcase video](https://drive.google.com/file/d/1ZR-4AIKmB2igStabZkb_kK75VroV90LR/view?usp=sharing)

  

