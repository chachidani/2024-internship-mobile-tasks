class Urls{
  static const String baseUrl = 'https://api.themoviedb.org/3';
  static const String apiKey = 'api_key=1f54bd990f1cdfb230adb312546d765d';
  static String getProdutbyId(String id) => '$baseUrl/movie/$id?$apiKey';
  

}