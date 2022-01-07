class BookList {
  String title;
  String author;
  double rating;
  String description;
  String imageAsset;

  BookList({
    required this.title,
    required this.author,
    required this.rating,
    required this.description,
    required this.imageAsset,
  });
}

var bookList = [
  BookList(
    title:
        'Atomic Habits: An Easy & Proven Way to Build Good Habits & Break Bad Ones',
    author: 'James Clear',
    rating: 4.2,
    description:
        "No matter your goals, Atomic Habits offers a proven framework for improving--every day. James Clear, one of the world's leading experts on habit formation, reveals practical strategies that will teach you exactly how to form good habits, break bad ones, and master the tiny behaviors that lead to remarkable results. ",
    imageAsset: 'images/atomic-habit.png',
  ),
  BookList(
    title: 'Keajaiban Toko Kelontong Namiya',
    author: 'Keigo Higashino',
    rating: 4.2,
    description:
        'Ketika tiga pemuda berandal bersembunyi di toko kelontong tak berpenghuni setelah melakukan pencurian, sepucuk surat misterius mendadak diselipkan ke dalam toko melalui lubang surat.  Surat yang berisi permintaan saran. Sungguh aneh. Namun, surat aneh itu ternyata membawa mereka dalam petualangan melintasi waktu, menggantikan peran kakek pemilik toko kelontong yang menghabiskan tahun-tahun terakhirnya memberikan nasihat tulus kepada orang-orang yang meminta bantuan. Hanya untuk satu malam.',
    imageAsset: 'images/keajaiban-toko.png',
  ),
  BookList(
    title: 'Bicara Itu Ada Seninya',
    author: 'Oh Su Hyang',
    rating: 4.2,
    description:
        'Ketika komunikasi menjadi hal yang penting untuk bersaing, pakar komunikasi Oh Su Hyang mengeluarkan buku yang sangat berarti. Selain berisi tentang pengalaman pengembangan diri, buku ini juga membahas tentang teknik komunikasi, persuasi, dan negosiasi.',
    imageAsset: 'images/seni-bicara.png',
  ),
  BookList(
    title: 'Ikigai',
    author: 'Ichigo Ichie',
    rating: 4.2,
    description:
        '—a reason for living. And according to the residents of the Japanese village with the world’s longest-living people, finding it is the key to a happier and longer life. Having a strong sense of *ikigai*',
    imageAsset: 'images/ikigai.png',
  ),
  BookList(
    title: 'Filosofi Teras',
    author: 'Henry Manampiring',
    rating: 4.2,
    description:
        'Apakah kamu sering merasa khawatir akan banyak hal? baperan? susah move-on? mudah tersinggung dan marah-marah di social media maupun dunia nyata? Lebih dari 2.000 tahun lalu, sebuah mazhab filsafat menemukan akar masalah dan juga solusi dari banyak emosi negatif. Stoisisme, atau Filosofi Teras, adalah filsafat Yunani-Romawi kuno yang bisa membantu kita mengatasi emosi negatif dan menghasilkan mental yang tangguh dalam menghadapi naik-turunnya kehidupan. Jauh dari kesan filsafat sebagai topik berat dan mengawang-awang, Filosofi Teras justru bersifat praktis dan relevan dengan kehidupan Generasi Milenial dan Gen-Z masa kini. ',
    imageAsset: 'images/filosofi-teras.png',
  ),
  BookList(
    title: 'The Subtle Art Of Not Giving A F*ck',
    author: 'Mark Manson',
    rating: 4.2,
    description:
        'In this generation-defining self-help guide, a superstar blogger cuts through the crap to show us how to stop trying to be "positive" all the time so that we can truly become better, happier people. For decades, we’ve been told that positive thinking is the key to a happy, rich life. "F**k positivity," Mark Manson says. "Let’s be honest, shit is f**ked and we have to live with it." In his wildly popular Internet blog, Manson doesn’t sugarcoat or equivocate. He tells it like it is—a dose of raw, refreshing, honest truth that is sorely lacking today. The Subtle Art of Not Giving a F**k is his antidote to the coddling, let’s-all-feel-good mindset that has infected American society and spoiled a generation, rewarding them with gold medals just for showing up.',
    imageAsset: 'images/subtle-art.png',
  ),
  BookList(
    title: 'Petunjuk Memulai UX dari NOL',
    author: 'Wasil',
    rating: 4.2,
    description:
        '😕 Ga punya mentor di kantor atau di kampus, jadi semua serba cari sendiri?😕  Bingung mau buat portofolio tapi belum ada pengalaman dan job sama sekali?😕  Suka ngerasa minder dan gelisah ketinggalan hal2 yang banyak orang sedang perbincangkan?*Fear not*, digital book ini menjawab semua kegundahan mu saat memulai belajar UI UX design dan research. Buku dirancang sedemikian rupa agar jelas, terarah, ringkas dan juga *actionable*, walaupun kamu belajar sendiri kamu tetap merasa terarahkan dan berkembang.Buku ini berisikan 60% petunjuk,  30% sumber belajar, dan 10% action items . Saya telah mengumpulkan sumber2 pembelajaran ini dalam 7 tahun terakhir. Tidak semua sumber dan artikel yang saya pelajari dimasukan ke dalam buku ini, namun hanya sumber  yang bener2 saya pake secara konsisten, sehingga waktu mu tidak terbuang membaca hal yang tidak penting.',
    imageAsset: 'images/petunjuk-ui-ux.png',
  ),
  BookList(
    title: 'Hooked: How to Build Habit-Forming Products',
    author: 'Hoover',
    rating: 4.2,
    description:
        "Why do some products capture our attention, while others flop? What makes us engage with certain products out of habit? Is there a pattern underlying how technologies hook us? This audiobook introduces listeners to the 'Hooked Model', a four-step process companies use to build customer habits. Through consecutive cycles through the hook, successful products reach their ultimate goal of bringing users back repeatedly - without depending on costly advertising or aggressive messaging.",
    imageAsset: 'images/hooked.png',
  ),
  BookList(
    title: 'Laying The Foundation',
    author: 'Andrew Couldwell',
    rating: 4.2,
    description:
        "'Laying the Foundations is a comprehensive guide to creating, documenting, and maintaining design systems, and how to design websites and products systematically. It's an ideal book for web designers and product designers (of all levels) and especially design teams.'",
    imageAsset: 'images/laying-foundation.png',
  ),
  BookList(
    title: 'Tutorial Berpikir Benar',
    author: 'Irwansyah Saputra',
    rating: 4.2,
    description:
        'Saat berlayar di laut, melihat mercusuar adalah hal yang istimewa. Karena dia penunjuk arah dan memberi isyarat bahwa kita sudah dekat dengan dermaga. Begitupun dalam berargumen, boleh saja kita ini awam, boleh saja kita ini bukan ahlinya. Tapi kita wajib memegang referensi yang valid terkait hal yang sedang dibahas. Karena kita berharap bisa berargumen menggunakan referensi tersebut dengan baik tanpa mengikutsertakan emosi.',
    imageAsset: 'images/tutor-berpikir.png',
  )
];

var allBook = bookList.reversed.toList();
