import 'package:super_app/src/core/models/mini_app_model.dart';
import 'package:super_app/src/screens/home_screen/repository/home_screen_repository.dart';

class HomeScreenServices extends HomeScreenRepository {
  @override
  List<MiniApp> getAllApps() {
    return _miniApps;
  }

  @override
  List<MiniApp> getAppsByCategory(String category) {
    return [];
  }

  final List<MiniApp> _miniApps = [
    const MiniApp(
        title: 'Flipkart',
        iconUrl:
            'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/5f3d81106163451.5f897528aa41a.jpg',
        version: '1.0.0',
        appUrl: 'https://www.flipkart.com/'),
    const MiniApp(
        title: 'Book My Show',
        iconUrl:
        'https://asset.brandfetch.io/id4J58sqa_/idYuv668fY.png',
        version: '1.0.0',
        appUrl: 'https://in.bookmyshow.com/explore/home/indore'),
    const MiniApp(
        title: 'Amazon',
        iconUrl:
        'https://cdn.icon-icons.com/icons2/2699/PNG/512/amazon_tile_logo_icon_170594.png',
        version: '1.0.0',
        appUrl: 'https://www.amazon.in/'),
    const MiniApp(
        title: 'News',
        iconUrl:
        'https://media.istockphoto.com/id/1351440359/vector/megaphone-with-breaking-news-speech-bubble-banner-loudspeaker-label-for-business-marketing.jpg?s=612x612&w=0&k=20&c=o2Q3N327CD_YdTjXqQ5cP2MW7rNHWDRD33ZO7iFA9QE=',
        version: '1.0.0',
        appUrl: 'https://www.amazon.in/'),
    const MiniApp(
        title: 'YouTube',
        iconUrl:
        'https://t3.ftcdn.net/jpg/04/74/05/94/360_F_474059464_qldYuzxaUWEwNTtYBJ44VN89ARuFktHW.jpg',
        version: '1.0.0',
        appUrl: 'https://www.youtube.com/'),
    const MiniApp(
        title: 'Instagram',
        iconUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Instagram_icon.png/2048px-Instagram_icon.png',
        version: '1.0.0',
        appUrl: 'https://www.amazon.in/'),
    const MiniApp(
        title: 'Oration Voice',
        iconUrl:
        'https://www.cnet.com/a/img/resize/db264fc0b56202d501894e1e9f05e3568a990d3c/hub/2019/06/05/644162fd-5f99-4a9c-becf-37ebcf2d97ea/firefox-new-icon-2019-06.jpg?auto=webp&width=1200',
        version: '1.0.0',
        appUrl: 'https://ws.oration.ai/'),
  ];
}
