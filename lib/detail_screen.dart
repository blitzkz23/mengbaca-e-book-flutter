import 'package:e_book_app/model/book_list.dart';
import 'package:e_book_app/shared/theme.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final BookList book;
  const DetailScreen({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: DetailPage(
        book: book,
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final BookList book;

  const DetailPage({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                ClipRect(
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
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: kCtaOrange),
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back),
                          color: kWhiteColor,
                        ),
                      ),
                      const BookmarkButton()
                    ],
                  ),
                ),
                Positioned(
                  top: 20,
                  child: Hero(
                    tag: book.imageAsset,
                    child: Image.asset(
                      book.imageAsset,
                      width: 160,
                      height: 250,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 30),
              child: Text(
                book.title,
                style: header3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'By ${book.author}',
                    style: defaultText,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.orange,
                      ),
                      Text(
                        book.rating.toString(),
                        style: defaultText,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24, left: 30, right: 30),
              child: Text(
                'Description',
                style: bookTitle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 30, right: 30),
              child: Text(
                book.description,
                textAlign: TextAlign.justify,
                style: defaultText,
              ),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}

class BookmarkButton extends StatefulWidget {
  const BookmarkButton({
    Key? key,
  }) : super(key: key);

  @override
  State<BookmarkButton> createState() => _BookmarkButtonState();
}

class _BookmarkButtonState extends State<BookmarkButton> {
  bool isBookmark = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: kCtaOrange,
      ),
      child: IconButton(
        icon: Icon(
          isBookmark ? Icons.bookmark : Icons.bookmark_outline,
          color: kWhiteColor,
        ),
        onPressed: () {
          setState(() {
            isBookmark = !isBookmark;
          });
        },
      ),
    );
  }
}
