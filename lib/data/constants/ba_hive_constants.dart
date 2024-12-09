class BAHiveEntityCode {
  static const userPreference = 0;
  static const locale = 1;

  /// USER RELATED
  static const userProfileModel = 3;
  static const userPhotoModel = 4;
  static const notificationData = 5;
  static const notificationContent = 6;
  static const userCareerModel = 7;
  static const userHeightModel = 8;
  static const userEducationModel = 9;
  static const userIncomeModel = 10;
  static const userChildrenModel = 11;
  static const userInterestModel = 12;
}

class BAHiveBoxName {
  static const userPreferenceBox = "userPreferenceBox";

  static const encryptionBox = "encryptionBox";

  static const authBox = "userAuthBox";

  static const notificationBox = "notificationBox";

  static const chatBox = "chatBox";

  static const userProfile = "userProfileBox";

  ///KEYS
  static const userIdKey = "userIdKey";
  static const accessTokenKey = "access_token";
  static const refreshTokenKey = "refresh_token";
  static const userIdTokenKey = "user_id_token";
  static const fcmTokenKey = "fcm_token";
  static const hasOnboardedKey = "has_onboarded";
  static const mqttCredentialsKey = "mqtt_credentials";
  static const externalUserKey = "external_user";
  static const userCredentialsIdKey = "user_id";
}
