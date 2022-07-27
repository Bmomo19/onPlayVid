import 'package:onplayvid/models/video.dart';

List<Video> getFakeVideos() {
  return [
    Video(
        id: "1",
        videoUrl:
            "http://orangevalleycaa.org/api/media/videos/WomanSculptsClayMusic_042009083.mp4",
        name: "Modeling Faces in Clay with Janet Blake",
        description:
            "This workshop, lead by acclaimed sculptor, and OVCAA resident artist, Janet Blake, is a don't miss experience. Janet shares tips and tricks that have made her one of the foremost artists in modeling faces in clay. Her engaging style will have you clamoring for more.",
        duration: "00:00:38",
        createdBy: "Ronald Winter, Video Producer, OVCAA ",
        image:
            "http://orangevalleycaa.org/api/media/images/WomanSculptsClay_042009083.png",
        thumbnail:
            "http://orangevalleycaa.org/api/media/images/thumbs/WomanSculptsClay_042009083.png",
        cropped:
            "http://orangevalleycaa.org/api/media/images/cropped/WomanSculptsClay_042009083.png",
        fileNameOriginal: "Woman sculpts clay_042009083.mp4",
        popularity: "10",
        categoryId: "2",
        category: "Craft",
        keywords: "clay,face,janet blake,sculpture"),
    Video(
        id: "2",
        videoUrl:
            "http://orangevalleycaa.org/api/media/videos/WomanSculptsClayMusic_042009083.mp4",
        name: "Modeling Faces in Clay with Janet Blake",
        description:
            "This workshop, lead by acclaimed sculptor, and OVCAA resident artist, Janet Blake, is a don't miss experience. Janet shares tips and tricks that have made her one of the foremost artists in modeling faces in clay. Her engaging style will have you clamoring for more.",
        duration: "00:00:38",
        createdBy: "Ronald Winter, Video Producer, OVCAA ",
        image:
            "http://orangevalleycaa.org/api/media/images/WomanSculptsClay_042009083.png",
        thumbnail:
            "http://orangevalleycaa.org/api/media/images/thumbs/WomanSculptsClay_042009083.png",
        cropped:
            "http://orangevalleycaa.org/api/media/images/cropped/WomanSculptsClay_042009083.png",
        fileNameOriginal: "Woman sculpts clay_042009083.mp4",
        popularity: "10",
        categoryId: "2",
        category: "Craft",
        keywords: "clay,face,janet blake,sculpture"),
    Video(
        id: "3",
        videoUrl:
            "http://orangevalleycaa.org/api/media/videos/WomanSculptsClayMusic_042009083.mp4",
        name: "Modeling Faces in Clay with Janet Blake",
        description:
            "This workshop, lead by acclaimed sculptor, and OVCAA resident artist, Janet Blake, is a don't miss experience. Janet shares tips and tricks that have made her one of the foremost artists in modeling faces in clay. Her engaging style will have you clamoring for more.",
        duration: "00:00:38",
        createdBy: "Ronald Winter, Video Producer, OVCAA ",
        image:
            "http://orangevalleycaa.org/api/media/images/WomanSculptsClay_042009083.png",
        thumbnail:
            "http://orangevalleycaa.org/api/media/images/thumbs/WomanSculptsClay_042009083.png",
        cropped:
            "http://orangevalleycaa.org/api/media/images/cropped/WomanSculptsClay_042009083.png",
        fileNameOriginal: "Woman sculpts clay_042009083.mp4",
        popularity: "10",
        categoryId: "2",
        category: "Craft",
        keywords: "clay,face,janet blake,sculpture")
  ];
}

enum VideoSort { id, name, duration }

extension ParseEnumName on VideoSort {
  String filterName() {
    return this.toString().split('').last;
  }
}
