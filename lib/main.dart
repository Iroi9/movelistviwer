import 'package:flutter/material.dart';
import 'package:movelistviwer/Fighter.dart';
import 'package:movelistviwer/movelistviewer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tekken 8 Move List Viewer',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurpleAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Move List Viewer'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _searchController = TextEditingController();

  List<Fighter> roster = [
    Fighter(
        0,
        "Kazuya",
        "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/ba3d6bf0-f660-4ce1-a12b-6e1505215b69/dfjzeik-3c1ee0ea-31f9-46b5-b735-f965c466e5fc.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2JhM2Q2YmYwLWY2NjAtNGNlMS1hMTJiLTZlMTUwNTIxNWI2OVwvZGZqemVpay0zYzFlZTBlYS0zMWY5LTQ2YjUtYjczNS1mOTY1YzQ2NmU1ZmMucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.-d6y_s8YCWGho-XTAU1-h7LmKfxqd56qdNoMSBVh-Kc",
        [Move("name", "input", "onBlock", "onHit", "onCounterhit")],
       -0.8),
    Fighter(
        1,
        "Jin",
        "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/ba3d6bf0-f660-4ce1-a12b-6e1505215b69/dfjzehk-613b1fbe-3296-4136-8341-602847a5062b.png/v1/fit/w_762,h_1800/tekken_8___jin_kazama__transparent_render__by_vgejackler_dfjzehk-414w-2x.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MjAwMCIsInBhdGgiOiJcL2ZcL2JhM2Q2YmYwLWY2NjAtNGNlMS1hMTJiLTZlMTUwNTIxNWI2OVwvZGZqemVoay02MTNiMWZiZS0zMjk2LTQxMzYtODM0MS02MDI4NDdhNTA2MmIucG5nIiwid2lkdGgiOiI8PTg0NiJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.PnyzGuskleV5me9xZlUE4kJ6nGJCkt-fHnm9H1e3uAg",
        List<Move>.empty(),
        -0.8),
    Fighter(
        2,
        "Jun",
        "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/9dc8c957-696f-486c-a907-f74f6d70b8df/dfyuxjz-26566be6-4219-4548-8bad-f18d25f7c63b.png/v1/fill/w_1280,h_1829/tekken_8_jun_kazama_render_by_dadooosweet_dfyuxjz-fullview.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTgyOSIsInBhdGgiOiJcL2ZcLzlkYzhjOTU3LTY5NmYtNDg2Yy1hOTA3LWY3NGY2ZDcwYjhkZlwvZGZ5dXhqei0yNjU2NmJlNi00MjE5LTQ1NDgtOGJhZC1mMThkMjVmN2M2M2IucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.QzyMQfQrGQHSYhLyN4ktmRoUYYm1_ocjHFE01DzzoSk",
        List<Move>.empty(),
        -0.85),
    Fighter(
        3,
        "Paul",
        "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/ba3d6bf0-f660-4ce1-a12b-6e1505215b69/dfjzekl-81aab766-8c25-431e-be4e-208d59cc237c.png/v1/fit/w_828,h_1484/tekken_8___paul_phoenix__transparent_render__by_vgejackler_dfjzekl-414w-2x.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MjAwMCIsInBhdGgiOiJcL2ZcL2JhM2Q2YmYwLWY2NjAtNGNlMS1hMTJiLTZlMTUwNTIxNWI2OVwvZGZqemVrbC04MWFhYjc2Ni04YzI1LTQzMWUtYmU0ZS0yMDhkNTljYzIzN2MucG5nIiwid2lkdGgiOiI8PTExMTYifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.qCI1ax6BSPDyyalr_VOYWjUD45mAOGqcCqrQBR-8JNY",
        List<Move>.empty(),
        -0.85),
    Fighter(
        4,
        "Law",
        "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/ba3d6bf0-f660-4ce1-a12b-6e1505215b69/dfjzejy-3e220951-80b8-4bbf-91fd-2efa3b12261d.png/v1/fit/w_750,h_1218/tekken_8____marshall_law__transparent_render__by_vgejackler_dfjzejy-375w-2x.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MjAwMCIsInBhdGgiOiJcL2ZcL2JhM2Q2YmYwLWY2NjAtNGNlMS1hMTJiLTZlMTUwNTIxNWI2OVwvZGZqemVqeS0zZTIyMDk1MS04MGI4LTRiYmYtOTFmZC0yZWZhM2IxMjI2MWQucG5nIiwid2lkdGgiOiI8PTEyMzIifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.GoRfpcDWtmkEydmY5pWfvqZZ8rnpPCmBghzRGRMnne4",
        List<Move>.empty(),
        -0.8),
    Fighter(
        5,
        "King",
        "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/ba3d6bf0-f660-4ce1-a12b-6e1505215b69/dfjzej3-b9af1c07-c155-470c-8d47-3b62a968f84c.png/v1/fit/w_828,h_954/tekken_8___king__transparent_render__by_vgejackler_dfjzej3-414w-2x.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTQ3NSIsInBhdGgiOiJcL2ZcL2JhM2Q2YmYwLWY2NjAtNGNlMS1hMTJiLTZlMTUwNTIxNWI2OVwvZGZqemVqMy1iOWFmMWMwNy1jMTU1LTQ3MGMtOGQ0Ny0zYjYyYTk2OGY4NGMucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.u8rHWMrI0JPb2tBhpGCoSBK8v64FJ1rYE48grP_oR_w",
        List<Move>.empty(),
        -0.85),
    Fighter(
        6,
        "Lars",
        "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/9dc8c957-696f-486c-a907-f74f6d70b8df/dfthxif-b27050da-007a-4f8b-8023-fa8867b19112.png/v1/fill/w_793,h_1008/lars_alexandersson_render_png_by_dadooosweet_dfthxif-pre.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTYyNiIsInBhdGgiOiJcL2ZcLzlkYzhjOTU3LTY5NmYtNDg2Yy1hOTA3LWY3NGY2ZDcwYjhkZlwvZGZ0aHhpZi1iMjcwNTBkYS0wMDdhLTRmOGItODAyMy1mYTg4NjdiMTkxMTIucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.t8ccQhkn0GaESXKqK3QTgogJGyyPjRv_w2mkyIv9HNo",
        List<Move>.empty(),
        -0.8),
    Fighter(
        7,
        "Xiaoyu",
        "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/9dc8c957-696f-486c-a907-f74f6d70b8df/dfyuxdo-f54d17bb-9036-4899-a143-1314f4bf1905.png/v1/fill/w_751,h_1064/tekken_8_ling_xiaoyu_render_by_dadooosweet_dfyuxdo-pre.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTgxNCIsInBhdGgiOiJcL2ZcLzlkYzhjOTU3LTY5NmYtNDg2Yy1hOTA3LWY3NGY2ZDcwYjhkZlwvZGZ5dXhkby1mNTRkMTdiYi05MDM2LTQ4OTktYTE0My0xMzE0ZjRiZjE5MDUucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.me9ZlXJJD_WKWH_zEywxZPnDhZfAIhbCgVHb_UFqick",
        List<Move>.empty(),
        -0.75),
    Fighter(
        8,
        "Jack-8",
        "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/ba3d6bf0-f660-4ce1-a12b-6e1505215b69/dfjzf47-92826c13-9b9e-43c4-86c4-9742831a9bd5.png/v1/fill/w_784,h_1019/tekken_8___jack_8__4k_transparent_render__by_vgejackler_dfjzf47-pre.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTY2NCIsInBhdGgiOiJcL2ZcL2JhM2Q2YmYwLWY2NjAtNGNlMS1hMTJiLTZlMTUwNTIxNWI2OVwvZGZqemY0Ny05MjgyNmMxMy05YjllLTQzYzQtODZjNC05NzQyODMxYTliZDUucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.Yt2ImN5ORcNXCOxCuR1xLN2mKGFLy9UcuMWnTflwzGA",
        List<Move>.empty(),
        -0.78),
    Fighter(
        9,
        "Nina",
        "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/ba3d6bf0-f660-4ce1-a12b-6e1505215b69/dfoy9lp-3a57e6c8-2151-4c0a-bdbd-b896127aa6e1.png/v1/fit/w_828,h_1184/tekken_8___nina_williams__6k_transparent_render__by_vgejackler_dfoy9lp-414w-2x.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTgyOSIsInBhdGgiOiJcL2ZcL2JhM2Q2YmYwLWY2NjAtNGNlMS1hMTJiLTZlMTUwNTIxNWI2OVwvZGZveTlscC0zYTU3ZTZjOC0yMTUxLTRjMGEtYmRiZC1iODk2MTI3YWE2ZTEucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.VHuRAybBBbVrARSWHfJ5kcFCbuO_2f3wpmsQXzyYBmc",
        List<Move>.empty(),
        -0.9),
    Fighter(
        10,
        "Asuka",
        "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/9dc8c957-696f-486c-a907-f74f6d70b8df/dfyuxxc-fd7c6cf3-cacb-4479-bcff-7bc8958b2802.png/v1/fit/w_750,h_1224/tekken8___asuka_kazama_render_by_dadooosweet_dfyuxxc-375w-2x.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MjA5MCIsInBhdGgiOiJcL2ZcLzlkYzhjOTU3LTY5NmYtNDg2Yy1hOTA3LWY3NGY2ZDcwYjhkZlwvZGZ5dXh4Yy1mZDdjNmNmMy1jYWNiLTQ0NzktYmNmZi03YmM4OTU4YjI4MDIucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ._6qjH4OB4uPqlpgoD9oBFfUSrksTFLit-yyNw3V_lAE",
        List<Move>.empty(),
        -0.84),
    Fighter(
        11,
        "Leroy",
        "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/ba3d6bf0-f660-4ce1-a12b-6e1505215b69/dfti9jn-5cf6e2e2-f0fd-4b34-aed2-224a5d38ce91.png/v1/fill/w_769,h_1039/leroy_smith___full_body__transparent__tekken_8_by_vgejackler_dfti9jn-pre.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTcyOSIsInBhdGgiOiJcL2ZcL2JhM2Q2YmYwLWY2NjAtNGNlMS1hMTJiLTZlMTUwNTIxNWI2OVwvZGZ0aTlqbi01Y2Y2ZTJlMi1mMGZkLTRiMzQtYWVkMi0yMjRhNWQzOGNlOTEucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.gOzekB-h54_ZAoSjGBf3vySyxvBmbCHppQ6inVZ7pvI",
        List<Move>.empty(),
        -0.85),
    Fighter(
        12,
        "Lili",
        "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/9dc8c957-696f-486c-a907-f74f6d70b8df/dfz8cjf-47533cb4-03e8-4d63-be0f-8b53c198d2a5.png/v1/fill/w_774,h_1032/tekken_lili_render_by_dadooosweet_dfz8cjf-pre.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MjE2MCIsInBhdGgiOiJcL2ZcLzlkYzhjOTU3LTY5NmYtNDg2Yy1hOTA3LWY3NGY2ZDcwYjhkZlwvZGZ6OGNqZi00NzUzM2NiNC0wM2U4LTRkNjMtYmUwZi04YjUzYzE5OGQyYTUucG5nIiwid2lkdGgiOiI8PTE2MjAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.VKeX9lGdDQYErNiSi10phzxmFz_1AHy78zvsrqQssT4",
        List<Move>.empty(),
        -0.85),
    Fighter(13, "Hworang", "", List<Move>.empty(), 0.8),
    Fighter(14, "Bryan", "", List<Move>.empty(), 0.8),
    Fighter(15, "Claudio", "", List<Move>.empty(), 0.8),
    Fighter(16, "Azucena", "", List<Move>.empty(), 0.8),
    Fighter(17, "Raven", "", List<Move>.empty(), 0.8),
    Fighter(18, "Feng", "", List<Move>.empty(), 0.8),
    Fighter(19, "Yoshimitsu", "", List<Move>.empty(), 0.8),
    Fighter(20, "Steve", "", List<Move>.empty(), 0.8),
    Fighter(21, "Dragunov", "", List<Move>.empty(), 0.8),
    Fighter(22, "Leo", "", List<Move>.empty(), 0.8),
    Fighter(23, "Kuma", "", List<Move>.empty(), 0.8),
    Fighter(24, "Shaheen", "", List<Move>.empty(), 0.8),
    Fighter(25, "Panda", "", List<Move>.empty(), 0.8),
    Fighter(26, "Zafina", "", List<Move>.empty(), 0.8),
    Fighter(27, "Lee", "", List<Move>.empty(), 0.8),
    Fighter(
        28,
        "Devil Jin",
        "https://media.discordapp.net/attachments/462319015033831426/1194706918036471848/coolest-devil-jin-render-v0-154r8ablf3zb1.png?ex=65b15485&is=659edf85&hm=103e137732d5b5fcb239d2f428427230331283c32f6a49050a385e9417972825&=&format=webp&quality=lossless&width=994&height=671",
        List<Move>.empty(),
        -0.8),
    Fighter(29, "Viktor", "", List<Move>.empty(), 0.8),
    Fighter(30, "Reina", "", List<Move>.empty(), 0.8),
    Fighter(31, "Alisa", "", List<Move>.empty(), 0.8)
  ];

  // Add a new list to store filtered fighters
  List<Fighter> filteredRoster = [];

  @override
  void initState() {
    super.initState();
    // Initialize the filtered list with the entire roster
    filteredRoster.addAll(roster);
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: Center(
            child: Row(children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://p325k7wa.twic.pics/high/tekken/tekken-8/00-page-setup/tekken8_logo.jpg.png?twic=v1/resize=760/step=10/quality=80"),
                fit: BoxFit.scaleDown,
                alignment: AlignmentDirectional.center,
                scale: 0.1,
              ),
            ),
            child: Align(
              alignment: AlignmentDirectional.center,
              child: Container(
                margin: const EdgeInsets.all(100),
                padding: const EdgeInsets.all(2),
              ),
            ),
          ),
          Text(
            widget.title,
            style: const TextStyle(
              fontFamily: 'Tekken 6 2',
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ])),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Search',
                hintText: 'Enter Character name',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              onChanged: (value) {
                // Trigger filtering when the search query changes
                filterSearchResults(value);
              },
            ),
            Expanded(
              child: Container(
                constraints: const BoxConstraints(
                  maxHeight: 1200,
                ),
                alignment: Alignment.topLeft,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: filteredRoster.length,
                        itemBuilder: (BuildContext context, int index) {
                          return buildImageCard(filteredRoster[index].index,
                              filteredRoster[index], context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  // Function to filter search results
  void filterSearchResults(String query) {
    setState(() {
      // Clear the filtered list
      filteredRoster.clear();

      // If the query is empty, show the entire roster
      if (query.isEmpty) {
        filteredRoster.addAll(roster);
      } else {
        // Filter the roster based on the query
        filteredRoster.addAll(roster.where((fighter) =>
            fighter.name.toLowerCase().contains(query.toLowerCase())));
      }
    });
  }
}

Widget buildImageCard(int index, Fighter fighter, BuildContext context) =>
    GestureDetector(
      onTap: () {
        // Use Navigator to push the SecondPage
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MovelistViewer(fighter: fighter),
          ),
        );
      },
      child: Card(
        margin: const EdgeInsets.all(5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          margin: const EdgeInsets.all(1),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(fighter.render),
                        fit: BoxFit.cover,
                        alignment: Alignment(0,fighter.y)),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional.center,
                    child: Container(
                      margin: const EdgeInsets.all(50),
                      padding: const EdgeInsets.all(5),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
