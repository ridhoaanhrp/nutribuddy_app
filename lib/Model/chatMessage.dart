enum Role { sistem, user }

class ChatMessage {
  final List<String> textList;
  final Role role;
  final DateTime date;
  final List<String> value;

  ChatMessage({
    required this.textList,
    required this.role,
    required this.date,
    required this.value,
  });

  static List<ChatMessage> getAlldata() {
    List<ChatMessage> demo = <ChatMessage>[];

    demo.add(ChatMessage(
        textList: [
          "Hi Aku Nutribuddy,",
          "Aku adalah chatbot yang membantu kamu dalam menavigasikan Nutribuddy ini.",
          "Aku butuh beberapa pertanyaan singkat untuk menentukan kategori kamu, apakah kamu mau melanjutkannya ?",
        ],
        role: Role.sistem,
        date: DateTime.now(),
        value: ["yes", "no"]));
    demo.add(ChatMessage(
        textList: ["Boleh"],
        role: Role.user,
        date: DateTime.now(),
        value: ["yes", "no"]));
    demo.add(ChatMessage(
        textList: [
          "Bagaimana aku bisa memanggilmu ?",
        ],
        role: Role.sistem,
        date: DateTime.now(),
        value: ["yes", "no"]));
    demo.add(ChatMessage(
        textList: ["Mr Ridho"],
        role: Role.user,
        date: DateTime.now(),
        value: ["yes", "no"]));
    demo.add(ChatMessage(
        textList: [
          "Apakah kamu dalam 12 bulan terakhir pernah berjemur dibawah sinar matahari? "
        ],
        role: Role.sistem,
        date: DateTime.now(),
        value: ["yes", "no"]));
    demo.add(ChatMessage(
        textList: ["Ya "],
        role: Role.user,
        date: DateTime.now(),
        value: ["yes", "no"]));
    return demo;
  }

  static int getLengtText(List<ChatMessage> demo, int key) {
    return demo[key].textList.length;
  }
}
