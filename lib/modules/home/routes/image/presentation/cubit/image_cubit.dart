import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'image_state.dart';

class ImageCubit extends Cubit<ImageState> {
  ImageCubit() : super(ImageInitial());

  final images = [
    'https://yt3.ggpht.com/Gb4v3ujz0m48OHa3rXs0wpmDQTxGZLAdjE69gnU7jsUq0xbLQwxLWIaB-EzmabFXcTjKTO23SbDx=s640-c-fcrop64=1,00000000ffffffff-rw-nd-v1',
    'https://yt3.ggpht.com/cqUQ4ep7HwEFdJLyk-aJmZIWnybhbXCIrtsrlgH44anMnapWe-EymAC_QhjOfQPcm4DEfelY2SxOgw=s640-c-fcrop64=1,00000000ffffffff-rw-nd-v1',
    'https://yt3.ggpht.com/v78m9sv1A55Wumy9uQOqziz-VA4wh1IvlPyUMmXWT_hE6usIIVClO7jvJclrixJ2n1bNlxSnMUFR=s640-c-fcrop64=1,00000000ffffffff-rw-nd-v1',
  ];

  final links = [
    'https://www.youtube.com/redirect?event=backstage_event&redir_token=QUFFLUhqbGdHQkpPbnh3S0FTckIyMUU5emhQbjV6VkdXZ3xBQ3Jtc0tuckQ0T3VkWjBWamNLd1ozRDBUYlJKQjB4QUotVzFrNEFfRkxjWjNweFZGbkdaZF93UmpPVXFCY2tzTzlENGpmckZNdEFNRDBTX0lncFNGVDFoU09LeUk0b0RJbDlMdkhGcFN0aG5BbWhrLXRzSkh1Yw&q=https%3A%2F%2Fgoo.gle%2Fio24-flutter-yt',
    'https://www.youtube.com/redirect?event=backstage_event&redir_token=QUFFLUhqbTlQc2ZmN1B4YndiTHFzblEwR1BwMW9NMXh6d3xBQ3Jtc0trbmNobjJRVVVSdjdfQkpxMVBMZEg2YVcwbDJFZlNFMENXdkVMaGdQRmJTcGV6Zm82S01FN3VyaFBmamJ3bUdvMVlFUGR1cWxvR1pZUUhoX2ZPZVJ6b042RXFtdnpldEN0T3FaXzUxNGlvUEg0b3Bvcw&q=https%3A%2F%2Fgoo.gle%2F3K0KfW3',
    'https://www.youtube.com/redirect?event=backstage_event&redir_token=QUFFLUhqbVhJZFV6dzQ0LXJpaWxNbENPQWc3OGlZUFBZd3xBQ3Jtc0tuY3BIYzYwQUQteFVrNVNtNVIxLWdic0tQOTNNd3A2LXp2SXd3M3pmV3U4SEdHckpuNFlRei14aXp2ODNuOUxQSGp5eUZtcmR6M1RkUXB2cnNiQW9xaUdLalJ6aDJQbDM0ZGx6VnRNRWFwWGkxWE1JVQ&q=https%3A%2F%2Fgoo.gle%2Fio2024-yt',
  ];
}
