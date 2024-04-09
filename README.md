[![pub package](https://img.shields.io/pub/v/meta_seo_module.svg)](https://pub.dartlang.org/packages/meta_seo_module)

[![](https://img.shields.io/badge/Module-Hub-007bff?style=for-the-badge&logo=flutter)](https://module.juneflow.org/)
[![](https://img.shields.io/badge/View-Hub-007bff?style=for-the-badge&logo=flutter)](https://view.juneflow.org/)

[![](https://img.shields.io/badge/DISCORD-JOIN%20SERVER-5663F7?style=for-the-badge&logo=discord&logoColor=white)](https://discord.gg/zXXHvAXCug)
[![](https://img.shields.io/badge/KakaoTalk-Join%20Room-FEE500?style=for-the-badge&logo=kakao)](https://open.kakao.com/o/gEwrffbg)

# meta_seo_module
module for meta_seo [package](https://pub.dev/packages/meta_seo)

##  Installation
1. If the juneflow project doesn't exist, please create it by following [this guide](https://doc.juneflow.org/).
2. open terminal in the juneflow project root directory, enter the following command.
 ```bash
 june add meta_seo_module
 ```

## Usage

### Normal Usage
```dart
@override
Widget build(BuildContext context) {

  // Add MetaSEO just into Web platform condition
  if(kIsWeb) {
    // Define MetaSEO object
    MetaSEO meta = MetaSEO();
    // add meta seo data for web app as you want
    meta.author(author: 'Eng Mouaz M AlShahmeh');
    meta.description(description: 'Meta SEO Web Example');
    meta.keywords(keywords: 'Flutter, Dart, SEO, Meta, Web');
  }

  return const Scaffold(
    body: Center(child: Text('Meta SEO Web Example')),
  );
}
```

### Usage with GoRouter
```dart
final router = GoRouter(
  initialLocation: '/',
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        // Add MetaSEO just into Web platform condition
        if(kIsWeb) {
          // Define MetaSEO object
          MetaSEO meta = MetaSEO();
          // add meta seo data for web app as you want
          meta.ogTitle(ogTitle: 'First Screen');
          meta.description(description: 'First Screen');
          meta.keywords(keywords: 'Flutter, Dart, SEO, Meta, Web');
        }

        return const FirstScreen();
      },
    ),
    GoRoute(
      path: '/second_screen',
      builder: (BuildContext context, GoRouterState state) {
        // Add MetaSEO just into Web platform condition
        if(kIsWeb) {
          // Define MetaSEO object
          MetaSEO meta = MetaSEO();
          // add meta seo data for web app as you want
          meta.ogTitle(ogTitle: 'Second Screen');
          meta.description(description: 'Second Screen');
          meta.keywords(keywords: 'Flutter, Dart, SEO, Meta, Web');
        }

        return const SecondScreen();
      },
    ),
  ],
);
```
### Extended Usage
```dart
@override
Widget build(BuildContext context) {
  
    // Add MetaSEO just into Web platform condition
    if(kIsWeb) {
      // Define MetaSEO object
      MetaSEO meta = MetaSEO();
      // add meta seo open graph tags as you want
      meta.facebookAppID(facebookAppID: 'your_app_id');
      meta.ogTitle(ogTitle: 'Example Screen');
      meta.ogDescription(ogDescription: 'Example Screen Description');
      meta.ogImage(ogImage: 'https://example.com/example.png');

      // here you can add any tags does not exist in the package as this
      meta.propertyContent(property: 'og:site_name', content: 'example');
      
      // or if you want to add twitter card meta tags just as the following
      meta.twitterCard(twitterCard: TwitterCard.summaryLargeImage);
      meta.twitterTitle(twitterTitle: 'Example Screen');
      meta.twitterDescription(twitterDescription: 'Example Screen Description');
      meta.twitterImage(twitterImage: 'https://example.com/example.png');
    
      // here you can add any tags does not exist in the package as this
      meta.nameContent(name: 'twitter:site', content: '@mouaz_m_shahmeh');
    }
    
    return const Scaffold(
      body: Center(child: Text('Extended Meta SEO Web Example')),
    );
}
```