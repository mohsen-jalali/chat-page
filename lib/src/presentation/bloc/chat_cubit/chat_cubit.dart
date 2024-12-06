import 'package:gamer_tag/src/domain/entities/message_entity/message_entity.dart';
import 'package:gamer_tag/src/domain/entities/user_entity/user_entity.dart';
import 'package:gamer_tag/src/presentation/bloc/chat_cubit/chat_page_state.dart';
import 'package:gamer_tag/src/presentation/bloc/general_cubit/base_cubit.dart';

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

  static const int autoDeleteMessageSeconds = 10;

  List<MessageEntity> messageList = [
    MessageEntity(
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

  void sendMessage(String message) {
    final newMessage = MessageEntity(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      text: message,
      senderId: currentUser.id,
      sentAt: DateTime.now(),
      expiresAt: autoDelete
          ? DateTime.now()
              .add(const Duration(seconds: autoDeleteMessageSeconds))
          : null,
    );
    messageList.add(newMessage);
    autoDelete = false;
    emit(SendMessageState.send(newMessage));
  }

  void toggleTimerMessage() {
    autoDelete = !autoDelete;
    emit(SwitchTimerMessageState.send(autoDelete));
  }

  void deleteMessage(int index, {bool isManualRemove = false}) {
    final message = messageList[index];
    messageList.removeAt(index);
    emit(DeleteMessageState.delete(index, message, isManualRemove));
  }

  void switchUsers(){
    if(currentUser == _firstUser){
      currentUser = _secondUser;
    }
    else{
      currentUser = _firstUser;
    }
    emit(SwitchUsersState.change(currentUser));
  }
}
