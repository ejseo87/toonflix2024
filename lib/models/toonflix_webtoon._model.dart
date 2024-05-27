class WebtoonModel {
  final String title, thumb, id;

  //I/flutter (20887): {
  //   id: 812354,
  //   title: 신혼일기,
  //   thumb: https://image-comic.pstatic.net/webtoon/812354/thumbnail/thumbnail_IMAG21_db07011f-6b03-4a20-83cc-6bf5689e975f.jpg
  //  }

  WebtoonModel.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        thumb = json['thumb'],
        id = json['id'];
}
