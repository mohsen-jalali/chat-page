import 'dart:async';
import 'dart:io';
import 'dart:ui';
import 'package:gamer_tag/src/domain/entities/message_entity/image_message_entity.dart';
import 'package:gamer_tag/src/domain/entities/message_entity/message_entity.dart';
import 'package:gamer_tag/src/domain/entities/message_entity/text_message_entity.dart';
import 'package:gamer_tag/src/domain/entities/user_entity/user_entity.dart';
import 'package:gamer_tag/src/presentation/bloc/chat_cubit/chat_page_state.dart';
import 'package:gamer_tag/src/presentation/bloc/general_cubit/base_cubit.dart';
import 'package:image_picker/image_picker.dart';

class ChatPageCubit extends BaseCubit<ChatPageState> {
  ChatPageCubit() : super(ChatPageInitState());

  final UserEntity _firstUser = UserEntity(
    id: "c2c75479-e369-4118-af19-6d19d8de7bd0",
    name: "Carlos",
    avatar: "https://picsum.photos/200/200",
  );

  final UserEntity _secondUser = UserEntity(
    id: "b0f815fd-3ca8-4f68-8b4f-b077aa9602d4",
    name: "Kristen",
    avatar: "https://picsum.photos/300/300",
  );

  static const int autoDeleteMessageSeconds = 5;

  int _lastSeenMessageIndex = 0;
  DateTime _lastSeenTimeStamp = DateTime.now();


  DateTime get lastSeenTimeStamp => _lastSeenTimeStamp;

  List<MessageEntity> messageList = [
    TextMessageEntity(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      text: "Hi How are you?",
      senderId: "b0f815fd-3ca8-4f68-8b4f-b077aa9602d4",
      sentAt: DateTime.now(),
    )
  ];
  late UserEntity currentUser = _firstUser;
  bool autoDelete = false;

  bool isMessageFromUser(String messageSenderId) {
    return messageSenderId == currentUser.id;
  }

  void sendTextMessage(String message) {
    final newMessage = TextMessageEntity(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      text: message,
      senderId: currentUser.id,
      sentAt: DateTime.now(),
      expiresAt: autoDelete
          ? DateTime.now()
              .add(const Duration(seconds: autoDeleteMessageSeconds))
          : null,
    );
    _sendMessage(newMessage);
  }

  void _sendMessage(MessageEntity message){
    messageList.add(message);
    autoDelete = false;
    emit(SendMessageState.send(message));
  }

  Future<ImageMessageEntity> sendImageMessage(XFile image) async {
    final File imageFile = File(image.path);
    Completer<ImageMessageEntity> completer = Completer();
     decodeImageFromList(imageFile.readAsBytesSync(),(result) {
       final newMessage = ImageMessageEntity(
         id: DateTime.now().millisecondsSinceEpoch.toString(),
         url: image.path,
         imageAspectRatio: result.width/result.height,
         senderId: currentUser.id,
         sentAt: DateTime.now(),
         expiresAt: autoDelete
             ? DateTime.now()
             .add(const Duration(seconds: autoDeleteMessageSeconds))
             : null,
       );
       _sendMessage(newMessage);
       completer.complete(newMessage);
     });
     return completer.future;
  }

  void toggleTimerMessage() {
    autoDelete = !autoDelete;
    emit(SwitchTimerMessageState.send(autoDelete));
  }

  void deleteMessage(int index, {bool isManualRemove = false}) {
    final message = messageList[index];
    messageList.removeAt(index);
    if(_lastSeenMessageIndex >= index){
      _lastSeenMessageIndex--;
    }
    emit(DeleteMessageState.delete(index, message, isManualRemove));
  }

  void switchUsers(){
    if(currentUser == _firstUser){
      currentUser = _secondUser;
    }
    else{
      currentUser = _firstUser;
    }
    _lastSeenMessageIndex = messageList.length - 1;
    _lastSeenTimeStamp = DateTime.now();
    emit(SwitchUsersState.change(currentUser));
  }


  bool isMessageSeen(int messageIndex){
    return messageIndex == _lastSeenMessageIndex;
  }
}
