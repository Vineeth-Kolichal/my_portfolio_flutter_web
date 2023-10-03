part of 'send_message_cubit.dart';

@freezed
class SendMessageState with _$SendMessageState {
  const factory SendMessageState(
      {required bool? isSending, required bool? isSend}) = _Initial;
  factory SendMessageState.initial() =>
   const    SendMessageState(isSending: null, isSend: null);
}
