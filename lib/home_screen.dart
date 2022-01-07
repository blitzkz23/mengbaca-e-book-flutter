import 'package:e_book_app/model/book_list.dart';
import 'package:e_book_app/shared/theme.dart';
import 'package:flutter/material.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  final String username;
  const HomeScreen({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: HomePage(
        username: username,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final String username;

  const HomePage({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Header(username: username),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 30),
              child: Text(
                'Recommended',
                style: header5,
              ),
            ),
            const RecommendedBook(),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 30),
              child: Text(
                'All Book',
                style: header5,
              ),
            ),
            const AllBook(),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.username,
  }) : super(key: key);

  final String username;

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Container(
        height: 200,
        width: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
          image: DecorationImage(
            image: AssetImage('images/banner.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                const TextSpan(text: 'Hello, '),
                                TextSpan(
                                  text: username,
                                  style: TextStyle(color: kCtaOrange),
                                )
                              ],
                              style: header1,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            'What do you want to read today?',
                            style: defaultText,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'images/avatar.png',
                              width: 30,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    child: TextFormField(
                      cursorColor: kPrimaryBlue,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Search for a book...',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(defaultRadius),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(focusedRadius),
                            borderSide: BorderSide(color: kCtaOrange),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AllBook extends StatelessWidget {
  const AllBook({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final double itemHeight = (size.height - kToolbarHeight - 100) / 2;
    final double itemWidth = size.width / 2;

    return SizedBox(
      width: 150,
      height: 140 * allBook.length.toDouble(),
      child: Padding(
          padding: const EdgeInsets.only(left: 30, top: 8, right: 30),
          child: GridView.count(
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            shrinkWrap: true,
            childAspectRatio: (itemWidth / itemHeight),
            crossAxisSpacing: 20,
            mainAxisSpacing: 30,
            children: allBook.map((books) {
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailScreen(
                      book: books,
                    );
                  }));
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: kGreyColor,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.asset(
                          books.imageAsset,
                          width: 160,
                          height: 200,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      books.title,
                      style: bookTitle,
                      maxLines: 2,
                    ),
                  ],
                ),
              );
            }).toList(),
          )),
    );
  }
}

class RecommendedBook extends StatelessWidget {
  const RecommendedBook({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 30,
          top: 8,
          right: 30,
        ),
        child: ListView.builder(
          itemBuilder: (context, index) {
            final BookList books = bookList[index];

            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailScreen(
                    book: books,
                  );
                }));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: SizedBox(
                  width: 120,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: kGreyColor),
                              borderRadius: BorderRadius.circular(8)),
                          child: Hero(
                            tag: books.imageAsset,
                            child: Image.asset(
                              books.imageAsset,
                              width: 120,
                              height: 175,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        books.title,
                        style: bookTitle,
                        maxLines: 2,
                      ),
                      Text(
                        books.author,
                        style: const TextStyle(fontSize: 11.5),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
          scrollDirection: Axis.horizontal,
          itemCount: bookList.length,
        ),
      ),
    );
  }
}
