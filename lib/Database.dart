final List <Map <String, dynamic> > topics =
[
  {'kazTitle': "Мамандықтар", 'image': 'assets/image/chef.png', 'korTitle': "직업"},
  {'kazTitle': "Елдер", 'image': 'assets/image/kazakhstan.png', 'korTitle': "나라"},
  {'kazTitle': "Заттар", 'image': 'assets/image/bed.png', 'korTitle': "물건"},
];
final List <Map <String, dynamic> > hangylTopics =
[
  {'kazTitle': "[И] [Аи] [Ую] [Яу]", 'image': 'assets/image/11.png', 'korTitle': "이 아이 우유 여우"},
  {'kazTitle': "[Мо] [То] [Кко] [Ма]", 'image': 'assets/image/12.png', 'korTitle': "머리띠 토마토 꼬리 치마 "},
  {'kazTitle': "[Са] [Джа] [Ди] [Сы]", 'image': 'assets/image/13.png', 'korTitle': "사다리 모자 라디오 주스"},
  {'kazTitle': "[Мэ] [Туи] [Чжа] [Ый]", 'image': 'assets/image/14.png', 'korTitle': "카메라  돼지 과자 의자"},
  {'kazTitle': "[Ль] [Сан] [Гу] [Гоң]", 'image': 'assets/image/15.png', 'korTitle': "말 산 친구 공"},
  {'kazTitle': "[Пу] [Ма] [Ккот] [Пит]", 'image': 'assets/image/16.png', 'korTitle': "부엌 앞치마 꽃 빗"},
];

var hangylWords = [
  ["이", "아이", "우유", "여우"],
  ["머리띠", "토마토", "뽀뽀 꼬리", "치마 꼬리"],
  ["사다리 모자 어머니 라디오 주스 바나나"],
  ["카메라 케이크 돼지 과자 의자 개"],
  ["말 산 친구 공"],
  ["부엌 앞치마 꽃 빗"],
];
final List <Map <String, dynamic> > jobCards =
[
  {'kazTitle': "Дәрігер", 'image': 'assets/image/doctor.png', 'korTitle': "의사"},
  {'kazTitle': "Мұғалім", 'image': 'assets/image/librarian.png', 'korTitle': "선생님"},
  {'kazTitle': "Полиция", 'image': 'assets/image/policeman.png', 'korTitle': "경찰"},
  {'kazTitle': "Медбике", 'image': 'assets/image/nurse.png', 'korTitle': "간호사"},
  {'kazTitle': "Аспаз", 'image': 'assets/image/chef.png', 'korTitle': "요리사"},
  {'kazTitle': "Суретші", 'image': 'assets/image/painter.png', 'korTitle': "화가"},
  {'kazTitle': "Спортшы", 'image': 'assets/image/fitness.png', 'korTitle': "운동선수"},
];
final List <Map <String, dynamic> > countryCards =
[
  {'kazTitle': "Бразилия", 'image': 'assets/image/brazil.png', 'korTitle': "브라질"},
  {'kazTitle': "Қытай", 'image': 'assets/image/china.png', 'korTitle': "중국"},
  {'kazTitle': "Германия", 'image': 'assets/image/germany.png', 'korTitle': "독일"},
  {'kazTitle': "Қазақстан", 'image': 'assets/image/kazakhstan.png', 'korTitle': "카자흐스탄"},
  {'kazTitle': "Оңтүстік Корея", 'image': 'assets/image/korea.png', 'korTitle': "한국"},
  {'kazTitle': "Ресей", 'image': 'assets/image/russia.png', 'korTitle': "러시아"},
  {'kazTitle': "Ұлыбритания", 'image': 'assets/image/uk.png', 'korTitle': "영국"},
  {'kazTitle': "АҚШ", 'image': 'assets/image/us.png', 'korTitle': "미국"},

];
final List <Map <String, dynamic> > thingCards =
[
  {'kazTitle': "Төсек", 'image': 'assets/image/bed.png', 'korTitle': "침대"},
  {'kazTitle': "Компьютер", 'image': 'assets/image/pc.png', 'korTitle': "컴퓨터"},
  {'kazTitle': "Терезе", 'image': 'assets/image/window.png', 'korTitle': "창문"},
  {'kazTitle': "Мобильді телефон", 'image': 'assets/image/smartphone.png', 'korTitle': "핸드폰"},
  {'kazTitle': "Камера", 'image': 'assets/image/camera.png', 'korTitle': "카메라"},
  {'kazTitle': "Есік", 'image': 'assets/image/door.png', 'korTitle': "문"},
];

var jobVariants = [
  ["선생님", "의사", "경찰", "간호사"],
  ["간호사", "요리사", "선생님", "운동선수"],
  ["경찰", "화가", "선생님", "운동선수"],
  ["의사", "간호사", "화가", "요리사"],
  ["운동선수", "화가", "경찰", "요리사"],
  ["요리사", "화가", "경찰", "의사"],
  ["운동선수", "선생님", "간호사", "경찰"],
];

var countryVariants = [
  ["독일", "브라질", "카자흐스탄", "중국"],
  ["중국", "독일", "러시아", "한국"],
  ["영국", "한국", "러시아", "독일"],
  ["영국", "카자흐스탄", "중국", "일본"],
  ["중국", "일본", "한국", "브라질"],
  ["영국", "독일", "카자흐스탄", "러시아"],
  ["카자흐스탄", "영국", "중국", "일본"],
  ["러시아", "미국", "카자흐스탄", "브라질"],
];

var thingVariants = [
  ["핸드폰", "문", "침대", "컴퓨터"],
  ["컴퓨터", "카메라", "핸드폰", "창문"],
  ["카메라", "문", "컴퓨터", "창문"],
  ["침대", "창문", "핸드폰", "컴퓨터"],
  ["문", "카메라", "컴퓨터", "창문"],
  ["컴퓨터", "창문", "침대", "문"],
];