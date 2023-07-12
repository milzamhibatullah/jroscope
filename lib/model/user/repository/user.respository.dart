abstract class UserRepository {
  ///create function login with return boolean
  Future<bool> login(String email, String password);
  Future<bool> register(String data);
}
