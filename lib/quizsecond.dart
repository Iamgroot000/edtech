import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:animate_do/animate_do.dart';


void main() {
  runApp(const quiz());
}

class quiz extends StatelessWidget {
  const quiz({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PageListBoutique(),
      debugShowCheckedModeBanner: false,
    );
  }
}


List category = [
  {
    "color":Colors.red[200],
    "coverPage":"https://st3.depositphotos.com/8543466/i/600/depositphotos_318812364-stock-photo-white-wooden-clothes-hangers-on.jpg",
    "url_image":"https://ae01.alicdn.com/kf/Hd6fe2b3d04f544929a263272990c72e73.jpg",
    "name":"Mujer",
    "products":productsWoman,
  },
  {
    "color":Colors.blue,
    "coverPage":"https://sevilla.abc.es/contenidopromocionado/wp-content/uploads/sites/2/2018/10/portada-wp-modahombre.jpg",
    "url_image":"https://i.pinimg.com/originals/92/f2/3f/92f23faa25b07d09d88c28797fddb6c4.jpg",
    "products":productsMen,
    "name":"Hombre",
  },
  {
    "color":Colors.pink,
    "coverPage":"https://wallpapers.com/wallpapers/black-and-white-upsc-exam-195tprzrqeib0p43.html",
    "products":productsKids,
    "name":"Niñ@s",
    "url_image":"https://i.pinimg.com/736x/83/cc/f6/83ccf6c9705fe52f1ddaf7f1764a8e4c.jpg",
  },
  {
    "color":Colors.brown,
    "coverPage":"https://mott.social/wp-content/uploads/2019/06/portada-como-reconocer-el-calzado-de-cuero-legitimo-e1559625053733.jpg",
    "products":productsCalzados,
    "name":"Calzados",
    "url_image":"https://www.dhresource.com/0x0/f2/albu/g9/M00/82/A0/rBVaWF7xg-uABNOnAAUBQ7yLwXU355.jpg/new-2020-shoes-woman-solid-sandals-slingbacks.jpg",
  },
  {
    "color":Colors.purple,
    "coverPage":"https://www.cutypaste.com/wp-content/uploads/2018/11/foto-portada-trajes-de-ban%CC%83o-ripley-1-790x400.jpg",
    "products":productsMen,
    "name":"Bikini","url_image":"https://mebikinis.com/wp-content/uploads/2018/10/3057-a37314e01e720fdf8d0b06d2b80b60c1-300x300.jpg"},
  {
    "color":Colors.cyan,
    "coverPage":"",
    "products":productsMen,
    "name":"Pileta",
    "url_image":"https://i.pinimg.com/originals/73/94/a2/7394a2e10a1fd5d94d3d705918ffbb23.jpg",
  },
];
List<Map<String, dynamic>> productsWoman = [
  {
    "title": "UPSC",
    "price": "120",
    "point": "1.5",
    "url_image": "assets/upscnew.jpg",
    "boxFit": BoxFit.cover,
  },
  {
    "title": "NEET",
    "price": "120",
    "point": "1.5",
    "url_image": "assets/upsc.jpg",
    "boxFit": BoxFit.cover,
  },
  {
    "title": "PYTHON ",
    "price": "7999",
    "point": "1.5",
    "url_image": "assets/pyo.png",
    "boxFit": BoxFit.cover,
  },
  {
    "title": "PHYSICS",
    "price": "6.500",
    "point": "1.5",
    "url_image": "assets/pyth.webp",
    "boxFit": BoxFit.cover,
  },
];


List productsMen = [
  {"title":"Camisa Dama Escocesa Cuadros Entallada Varios Colores","price":"999","point":"1.5","url_image":"https://image1.masterfile.com/getImage/NjkzLTA2MzI0MTA5ZW4uMDAwMDAwMDA=ANdGJu/693-06324109en_Masterfile.jpg"},
  {"title":"Camisa Leñadora Hombre","price":"4.499","point":"1.5","url_image":"https://image.freepik.com/free-photo/portrait-handsome-smiling-stylish-young-man-model-dressed-red-checkered-shirt-fashion-man-posing_158538-4914.jpg"},
  {"title":"Camisa Leñadora Hombre","price":"4.499","point":"1.5","url_image":"https://lh3.googleusercontent.com/proxy/DwbjJxRxR-TSfZ_X5JiNtWi8ggTXRCqYGAIOQo2Ec1j8ULMnuTHNfbLnME1M_tDY4pJwJNFK2H36wNBzSI7SP3uikgJfiGzgkj5wRyPAyHnsWb_9atSi_LaWv5cfm1l6dBE0Oes5CYv_ElVw"},
  {"title":"Camisa Jean Hombre","price":"4.499","point":"1.5","url_image":"https://image.freepik.com/foto-gratis/hombre-brazos-cruzados-sobre-fondo-colores_1368-10327.jpg"},
];
List productsKids=[
  {"title":"Prenda","price":"120","point":"1.5","url_image":"https://img.ltwebstatic.com/images3_pi/2020/02/27/158276769772358b7d9bef03a8f1f5822f14594f7b.webp"},
  {"title":"Prenda","price":"120","point":"1.5","url_image":"https://img.ltwebstatic.com/images3_pi/2019/12/28/15774974150d946f552a770c70be9f9e0d362f74c6.webp"},
  {"title":"Prenda","price":"120","point":"1.5","url_image":"https://i.pinimg.com/474x/d5/b8/9e/d5b89edcb3842da36f4915952a97657f.jpg"},
  {"title":"Prenda","price":"120","point":"1.5","url_image":"https://i.pinimg.com/originals/f2/63/28/f263280bd4b20c04782cbaf8468ef772.jpg"},
  {"title":"Prenda","price":"120","point":"1.5","url_image":"https://thumbs.dreamstime.com/b/nueva-york-ny-de-octubre-un-modelo-camina-la-pista-durante-el-avance-de-la-ropa-del-aria-children-en-la-semana-de-la-moda-de-los-45847300.jpg"},
  {"title":"Prenda","price":"120","point":"1.5","url_image":"https://bomboncitokids.com/1112-large_default/vestido-evase.jpg"},
];
List productsCalzados = [
  {"title":"Prenda","price":"120","point":"1.5","url_image":"https://images.clarin.com/2018/08/26/zapatillas-y-moda-una-alianza___Bkggg1XwQ_340x340__1.jpg"},
  {"title":"Prenda","price":"120","point":"1.5","url_image":"https://i.pinimg.com/564x/05/18/bc/0518bc074111107726a9a9ccd0a141d4.jpg"},
  {"title":"Prenda","price":"120","point":"1.5","url_image":"https://modaellos.com//wp-content/uploads/2020/05/moda-calzado-hombre-otono-invierno-tendencias-zapatos-y-zapatillas-zara-600x900.jpg"},
  {"title":"Prenda","price":"120","point":"1.5","url_image":"https://estaticos.marie-claire.es/media/cache/680x_thumb/uploads/images/gallery/55dd81cf26e1043b24a9f090/maccui-1-v1-95992.jpg"},

];


class PageListBoutique extends StatefulWidget {
  const PageListBoutique({super.key});

  @override
  _PageListBoutiqueState createState() => _PageListBoutiqueState();
}

class _PageListBoutiqueState extends State<PageListBoutique> {
  bool isDarkMode = false;
  int indexCategory = 0;
  Color colorIcon = Colors.white;
  Color colorIconText = Colors.black;
  Color colorText = Colors.black;
  final MaterialColor colorCanvas = Colors.grey;
  Color colorAccent = Colors.purple;

  @override
  Widget build(BuildContext context) {
    isDarkMode = Theme.of(context).brightness == Brightness.dark;
    colorAccent = category[indexCategory]["color"];
    colorText = isDarkMode ? Colors.white : Colors.black;
    colorIcon = isDarkMode ? Colors.white : Colors.black;
    colorIconText = isDarkMode ? Colors.black : Colors.white;

    return Scaffold(
      backgroundColor:
      Theme.of(context).brightness == Brightness.dark ? colorCanvas[900] : colorCanvas[100],
      body: body(context: context),
    );
  }

  Widget body({required BuildContext context}) {
    return Stack(
      children: [
        background(),
        CustomScrollView(
          slivers: [
            sliverAppBar(context: context),
            SliverToBoxAdapter(
                child: FadeInLeft(
                    delay: const Duration(milliseconds: 500), child: _buildTitleBubble())),
            SliverToBoxAdapter(
                child: FadeInLeft(
                    delay: const Duration(milliseconds: 1000), child: SearchBox())),
            _gridViewProducts(context: context),
            _sliverContentInfo(),
          ],
        ),
        Column(children: [Expanded(child: Container()), BottomNavigationBar(colorAccent: colorAccent)]),
      ],
    );
  }

  SliverAppBar sliverAppBar({required BuildContext context}) {
    return SliverAppBar(
      backgroundColor: isDarkMode ? colorCanvas[900] : colorAccent,
      primary: true,
      pinned: true,
      expandedHeight: 150,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.parallax,
        centerTitle: false,
        title: const Text(
          'EDTECH',
          style: TextStyle(color: Colors.white),
        ),
        background: CachedNetworkImage(
            width: double.infinity,
            height: double.infinity,
            imageUrl: category[indexCategory]["coverPage"] ?? "default",
            fadeInDuration: const Duration(milliseconds: 500),
            fit: BoxFit.cover,
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                Container(color: Colors.grey[300]),
            errorWidget: (context, url, error) => Container(color: colorAccent)),
      ),
      leading: buttonRoundAppBar(
          onPressed: () {
            Navigator.of(context).pop();
          },
          context: context,
          icon: Icons.arrow_back,
          edgeInsets: const EdgeInsets.all(8.0)),
      actions: [
        buttonRoundAppBar(
            onPressed: () {},
            context: context,
            icon: Icons.shopping_bag_outlined,
            edgeInsets: const EdgeInsets.only(right: 2.0, top: 8.0, bottom: 8.0)),
      ],
    );
  }

  SliverToBoxAdapter _sliverContentInfo() {
    return SliverToBoxAdapter(
        child: SizedBox(
            height: 400,
            width: double.infinity,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        "Boutieque".toUpperCase(),
                        style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)
                    ),
                    const SizedBox(height: 20),
                    const Text(
                        "Nos definimos como una empresa joven dedicada a la comercialización y distribución de artículos de moda urbana. Actualizamos constantemente nuestro plan de trabajo y nos adaptamos a las necesidades de quienes nos eligen, asumiendo el compromiso de brindar el mejor servicio y la mejor atención",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal)
                    ),
                  ],
                ),
              ),
            )
        )
    );
  }

  Widget _buildTitleBubble() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  "Education with Technology",
                  style: TextStyle(fontSize: 20, color: colorText, fontWeight: FontWeight.bold)
              ),
            ],
          ),
        ),
        SizedBox(
          height: 112.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: category.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    InkWell(
                        onTap: () {
                          setState(() {
                            indexCategory = index;
                          });
                        },
                        child: Card(
                            clipBehavior: Clip.antiAlias,
                            shape: const CircleBorder(),
                            elevation: indexCategory == index ? 10.0 : 0.0,
                            margin: const EdgeInsets.all(0.0),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: indexCategory == index ? 28 : 30,
                                backgroundImage: AssetImage(category[index]["url_image"]),
                                backgroundColor: Colors.grey,
                              ),
                            )
                        )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(category[index]["name"], style: TextStyle(color: colorText)),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _gridViewProducts({required BuildContext context}) {
    SliverGridDelegateWithMaxCrossAxisExtent gridDelegate = const SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: 300.0,
      crossAxisSpacing: 0.0,
      mainAxisSpacing: 1.0,
      childAspectRatio: 200 / 290,
    );

    return SliverGrid(
        gridDelegate: gridDelegate,
        delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                // Navigate to the desired screen when a list item is clicked
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(product: category[indexCategory]["products"][index]),
                  ),
                );
              },
              child: FadeInUp(
                key: Key(DateTime.now().toString()),
                delay: const Duration(milliseconds: 500),
                child: CardProduct(
                  colorAccent: colorAccent,
                  obj: category[indexCategory]["products"][index],
                ),
              ),
            );
          },
          childCount: category[indexCategory]["products"].length,
        )
    );
  }

  Widget background() {
    return const Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Image(
        image: AssetImage("assets/background.jpg"),
        fit: BoxFit.cover,
        height: 240,
      ),
    );
  }
}

class CardProduct extends StatelessWidget {
  final Map<String, dynamic> obj;
  final Color colorAccent;

  CardProduct({
    Key? key,
    required this.obj,
    required this.colorAccent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      elevation: 5.0,
      margin: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8.0),
              topRight: Radius.circular(8.0),
            ),
            child: Image.asset(
              obj["url_image"],
              fit: BoxFit.cover,
              height: 150.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(obj["title"], style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
                const SizedBox(height: 4.0),
                Text("\$${obj["price"]}", style: TextStyle(fontSize: 14.0, color: colorAccent)),
                const SizedBox(height: 4.0),
                Text("${obj["point"]} Points", style: TextStyle(fontSize: 14.0, color: colorAccent)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final Map<String, dynamic> product;

  const DetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product["title"]),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(product["url_image"]),
            Text("Price: \$${product["price"]}"),
            Text("Point: ${product["point"]}"),
            // Add other details...
          ],
        ),
      ),
    );
  }
}

class SearchBox extends StatelessWidget {
  const SearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        onChanged: (value) {},
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: "Search...",
          prefixIcon: const Icon(Icons.search, color: Colors.grey),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Colors.transparent),
          ),
        ),
      ),
    );
  }
}

class BottomNavigationBar extends StatelessWidget {
  const BottomNavigationBar({Key? key, required this.colorAccent}) : super(key: key);

  final Color colorAccent;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 10,
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: IconButton(
              icon: const Icon(Icons.home,
                  color: Colors.green),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: IconButton(
              icon: const Icon(Icons.favorite, color: Colors.green),
              onPressed: () {},
            ),
          ),
          // Expanded(
          //   child: IconButton(
          //     icon: const Icon(Icons.shopping_cart, color: Colors.green),
          //     onPressed: () {},
          //   ),
          // ),
          Expanded(
            child: IconButton(
              icon: const Icon(Icons.account_circle, color: Colors.green),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}

Widget buttonRoundAppBar(
    {required VoidCallback onPressed,
      required BuildContext context,
      required IconData icon,
      required EdgeInsets edgeInsets}) {
  return InkWell(
    borderRadius: BorderRadius.circular(50),
    onTap: onPressed,
    child: Padding(
      padding: edgeInsets,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.3),
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.black,
        ),
      ),
    ),
  );
}