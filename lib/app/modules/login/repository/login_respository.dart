import 'package:estudos/app/interfaces/api_base_interface.dart';
import 'package:estudos/app/services/api_base_service.dart';

class LoginRepository {
  final IApiBase apiBase = ApiBaseService();
  login(Map<dynamic, dynamic> data) async {
    return await apiBase.post('/User/authenticate', data);
  }
}
