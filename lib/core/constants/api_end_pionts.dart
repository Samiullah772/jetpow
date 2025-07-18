class EndPoints {
  // static const baseUrl = 'http://localhost:3000/api/v1';
  static const baseUrl = 'http://13.53.126.224:8080/api';

  ///
  /// auth and profile apis
  ///
  static const userProfile = '/user';
  static const updateProfile = "/user/update";
  static const bankIdAuth = "/bankid/auth";
  static const sendOtp = "/email/otp";
  static const verifyOtp = "/auth/otp/phone/verify";
  static const verifyemailOtp = "/auth/otp/email/verify";
  static const resetPass = "/reset/password";
  static const changePass = "/change/password";
  static const signeringBankIdAuth = "/signering/bankid/sign";
  static const bankIdSign = "/bankid/sign";
  static const refreshToken = "/user/refreshToken";
  static const bankIdCollect = "/bankid/collect";
  static const signeringBankIdCollect = "/signering/bankid/collect";
  static const notifications = "/get/notifications";
  static const deleteNotification = "/delete/noti/";
  static const onboardingData = 'onboarding_data';
  static const appState = "/appstate";
  static const commissions = "/commission/get";
  static const homeScreenTitles = "/changeable-title/get";

  static const updateAppState = "/appstate/update/";
  // static const fcm_token = 'fcm_token';
  // static const clear_fcm_token = 'clear_fcm_token';
  static const login = '/auth/login';
  static const googleLogin = '/google/login';
  static const appleLogin = '/apple/login';
  static const linkGoogle = '/google/sync';
  static const linkFacebook = '/facebook/sync';
  static const facebookLogin = '/facebook/login';
  static const signup = '/auth/signup';
  static const deleteAccount = '/delete/user';
  // static const reset_password = 'reset_password';
  static const checkHealth = "http://localhost:3000/";

  ///
  /// items routes
  ///
  static const startKyc = "/kyc/start";
  static const updateKYC = "/kyc/update/status";
  static const bgRemove = "/item/bg-remove";
  static const fetchDetails = "/item/details";
  static const fetchDetailsWithMultiImgs = "/item/multi/imgs/details";
  static const uploadSingleImage = "/upload/single";
  static const saveProduct = "/item/create";
  static const personalization = "/personalization/create";
  static const updatepersonalization = "/personalization/update";
  static const getUserPersonalization = "/personalization/userid";

  static const deleteProduct = "/item/delete";
  static const updateProduct = "/item/update";
  static const uploadimages = "/item/images/list";
  static const saveProdImage = "/item/image/create";
  static const getAllProducts = "/items/get";
  static const getForYouProducts = "/items/just-for-you";
  static const getCat2Products = "/items/sub-categ2";
  static const getCatProducts = "/items/category";
  static const getCat1Products = "/items/sub-categ1";
  static const getAllGenders = "/genders/active/get";
  static const allCountries = "/countries/get";
  static const allCities = "/cities/bystateid";
  static const deliveryCities = "/delivery/cities/get";
  static const cityLockers = "/lockers/get";
  static const allStates = "/states/bycountryid";
  static const allCondtions = "/condition/get";
  static const allMaterials = "/material/active/get";
  static const allSizes = "/size/active/get";
  static const sizesByCateg = "/size/by-categ/";
  static const sizesBySubCateg1 = "/size/sub-categ1/";
  static const sizesBySubCateg2 = "/size/sub-categ2/";
  static const allWeights = "/parcel-weight/get";
  static const allColors = "/color/active/get";
  static const getMyProducts = "/my-items";
  static const searchProducts = "/search/products";
  static const filterProducts = "/filter/products";
  static const saveFilter = "/saved-filter/create";
  static const deleteFilter = "/saved-filter/delete";
  static const getsavedFilter = "/saved-filter/userid";
  static const bannerClick = "/banner/on-tap";
  static const deliveryCharges = "/delivery/charges";
  static const productSearchSuggestion = "/search-suggestions/products";
  static const getpopularProducts = "/popular/products";
  static const getRelaventProducts = "/relevant/products";
  static const getMemberProducts = "/my-items";
  static const getNewestProducts = "/new/products";
  static const getTopSellers = "/sellers/top";
  static const membersSuggestion = "/users/search/suggestions";
  static const getSellerswithProducts = "/sellers/with/products";
  static const getallBrands = "/brand/get";
  static const getSubCat1 = "/sub-categ1/categ";
  static const categHirarchy = "/categories/hirarchy";
  static const getSubCat2 = "/sub-categ2/sub-categ1";
  static const getAllCategories = "/category/get";
  static const likeProudct = "/wishlist/create";
  static const whishList = "/user/wishlists";
  static const followUser = "/follow/create";
  static const followBrand = "/follow-brand/create";
  static const getFollowers = "/followers/get";
  static const getPaymentMethods = "/payment-methods/active";
  static const getShippings = "/shipperss/active";
  static const getFollowings = "/followings/get";
  static const viewProduct = "/prod-views/create";
  static const userWishlists = "/user/wishlists";
  static const deleteImage = "/delete/image";
  static const deleteItem = "/item/delete/";
  static const updateItemImage = "/item/image/update/";
  static const itemById = "/item/get/";
  static const addToCart = "/cart/create";
  static const getCarts = "/carts/get";
  static const deleteCartItem = "/delete/cart/";
  static const customerSecurity = "/security/get";
  static const dbLocalization = "/localization/get";
  static const filterByCateg = "/items/category";
  static const app_banners = "/banner/for/app";
  static const discount = "/bundle-discount/create";
  static const userDiscounts = "/bundle-discount/user";

  ////
  /// Address end points
  ///
  static const getAddressByUserId = "/address/by/user";
  static const deleteAddress = "/address/delete/";
  static const updateAddress = "/address/update";
  static const defaultAddress = "/address/mark-default";
  static const saveAddress = "/address/create";
  static const latLongFromZipCode = "/lat/long/zipCode";

  ////
  /// Orders End Points
  ///
  static const placeOrder = "/place/order";
  static const stripeSwishPayment = "/stripe/swishpay";
  static const getBuyerOrders = "/buyer/orders";
  static const getBuyerArvhicedOrders = "/buyer/archived/orders";
  static const getSellerOrders = "/seller/orders";
  static const getSellerArchivedOrders = "/seller/archived/orders";
  static const changeOrderStatus = "/change/order/status";
  static const updateOrder = "/update/order/";
  static const addreview = "/reviews/create";
  static const getreviews = "/reviews/product";

  ///
  /// Support End Points
  ///
  static const updateCustomerStatus = "/customer-support";
  static const addCustomerMessage = "/support-message/create";
  static const getsupportMessages = "/support-messages/get";
  static const supportRequest = "/support-request/create";
  static const getRequest = "/support-request/user";

  ///
  ///
  /// uplaod routes
  ///
  static const uploadProfilePic = "/upload/single";
  static const uploadImage = "/upload/single";

  ///
  ///
  /// Banking EndPoints
  ///
  static const addBankAccount = "/withdrawal-acc/create";
  static const withdraw = "/withdrawal-requests/create";
  static const transactionHistory = "/wallets/trans/history";
  static const getUserAccounts = "/withdrawal-acc/get";
  static const getAdminAccounts = "/admin/accounts/get";
  static const updateBankAccount = "/withdrawal-acc/update";
  static const getMyWallet = "/wallet/user/get";
  static const spotlighttypes = "/spotlight-type/get";
  static const userSpotlight = "/spotlight/user";
  static const productStats = "/product/stats";
  static const spotlightCharges = "/spotlight/charges";
  static const spotlightcreate = "/spotlight/create";

  ////
  /// Chat end points
  ///
  static const getChatMessages = "/messages/get";
  static const getConversations = "/conversation/";
  static const storeMessage = "/message/store";
  static const sendOffer = "/offer/create";
  static const updateOffer = "/offer/update/status";

  static const blockUser = "/block-user/create";
  static const reportUser = "/report-user/create";
  static const checkConversation = "/check/conversation";
  static const deleteConversation = "/delete/conversation";
  static const createConveration = "/conversation/create";
  static const updateConversation = "/conversation/update/";
  static const getServerTime = "/server-time";
}
