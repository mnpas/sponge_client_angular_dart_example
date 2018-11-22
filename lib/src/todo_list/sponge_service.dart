import 'package:angular/core.dart';
import 'package:sponge_client_dart/sponge_client_dart.dart';

/// A Sponge REST API client service.
@Injectable()
class SpongeService {
  // The client that will use the Sponge Demo API service.
  SpongeRestClient client = SpongeRestClient(
      SpongeRestClientConfiguration('https://spongedemoapi.openksavi.org'));
}