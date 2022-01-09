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
    var posX = (MediaQuery.of(context).size.width / 2) - 150 / 2;

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: Image.asset('images/banner.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: kCtaOrange,
                            borderRadius: BorderRadius.circular(8)),
                        child: IconButton(
                            color: kCtaOrange,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: kWhiteColor,
                            )),
                      ),
                      const BookmarkButton()
                    ],
                  ),
                ),
                Center(
                  child: UnconstrainedBox(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 36),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: SizedBox(
                          width: 150,
                          height: 220,
                          child: Hero(
                            tag: book.imageAsset,
                            child: Image.asset(
                              book.imageAsset,
                            ),
                          ),
                        ),
                      ),
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
            if (isBookmark) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("You've bookmarked this item.")));
            }
          });
        },
      ),
    );
  }
}
