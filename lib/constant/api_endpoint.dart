class APiEndPoint {
  static String baseUrl = "https://cabandcargo.com/v1.0";
  static String login = "$baseUrl/login";
  static String forgotPass = "$baseUrl/forgot-password";
  static String registerAPi = "$baseUrl/auth/register";
  static String saveUser = "$baseUrl/auth/save-user-details";

  static String verifyOtp = "$baseUrl/auth/verify-otp";
  static String changePassword = "$baseUrl/auth/change-password";
  static String getUserDetails = "$baseUrl/auth/get-user-details";
  static String visitingCardDetails =
      "$baseUrl/visiting-card/get-business-card-details";
  static String postBusinessCardApi = "$baseUrl/visiting-card/create-edit";
  static String googleRegister = "$baseUrl/auth/google-register";
  static String addEditPost = "$baseUrl/post/create";
  static String addEditAlbum = "$baseUrl/album/create";
  static String getPost = "$baseUrl/post/get-post";
  static String getHomeData = "$baseUrl/post/home-data";
  static String postComment = "$baseUrl/post/comment-post";
  static String likePost = "$baseUrl/post/like-post";
  static String getComment = "$baseUrl/post/get-post-comment";
}
