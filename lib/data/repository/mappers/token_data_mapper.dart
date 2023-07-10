import '../../../domain/entities/token.dart';
import '../models/token_data.dart';
import 'base/base_data_mapper.dart';

class TokenDataMapper extends BaseDataMapper<TokenData, Token> {
  @override
  Token mapToEntity(TokenData? data) {
    return Token(
      token: data?.token ?? '',
      refreshToken: data?.refreshToken ?? '',
    );
  }
}