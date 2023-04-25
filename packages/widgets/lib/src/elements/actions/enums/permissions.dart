///
enum Permissions {
  ///
  billing,
  ///
  bluetooth,
  ///
  camera,
  ///
  calendar,
  ///
  contacts,
  ///
  location,
  ///
  microphone,
  ///
  phone,
  ///
  sensors,
  ///
  sms,
  ///
  storage,
}

//intrinsic state ha una lista di enum e poi in export si fa il check per i nodi in base a
//quali enum ha, se gia esiste in un altro nodo non lo aggiunge e alla fine
//trovati tutti gli enum si aggiunge solo i permessi che sono presenti in questa
//temp list di enum permission 

//ANDROID
/**Permission Group	Permissions
 * calendar
READ_CALENDAR
WRITE_CALENDAR
 * camera
CAMERA
 * contacts
READ_CONTACTS
WRITE_CONTACTS
GET_ACCOUNTS
 * location
ACCESS_FINE_LOCATION
ACCESS_COARSE_LOCATION
 * microphone
RECORD_AUDIO
 * phone
READ_PHONE_STATE
CALL_PHONE
READ_CALL_LOG
WRITE_CALL_LOG
ADD_VOICEMAIL
USE_SIP
PROCESS_OUTGOING_CALLS
 * sensors
BODY_SENSORS
 * sms
SEND_SMS
RECEIVE_SMS
READ_SMS
RECEIVE_WAP_PUSH
RECEIVE_MMS
 * storage
READ_EXTERNAL_STORAGE
WRITE_EXTERNAL_STORAGE
*/

//--------------------------------------
/* IOS Permissions
Location
One of the most common pop ups you will see. If you have a map in your app or need to know to track users location in any way make sure you show this popup. As the map is the main screen of many apps it is often a good idea to ask for location permission during onboarding.

Contacts
If you want to pull user contacts from the phone book or maybe you’d want to send some messages, whether triggered by the app or user, to phone contacts. In this case you will need to show popup asking for contacts permissions. This popups should be shown right before the app will attempt accessing the phone contacts for the first time.

Microphone
Do you have a voice chat in your app? Can users record some sounds through the microphone? Then make sure you get permissions to do that!

Speech recognition
Want to be fancy and add speech recognition to your app? Apple has you covered! Just request permissions and it’s yours to use.

Calendar
If your app creates events then it might be a good idea to add syncing with the calendar. This way your users would be able to save event details in their calendars and get automatic calendar reminders beforehand. Make sure you show the permission popup before you try to sync with the calendar.

Reminders
Not only can you access user calendar but you can even access the reminders section! So if you want to make sure user doesn’t forget something feel free to request permission for accessing their reminders.

Camera & Media library
Building a very VERY very unique one of a kind selfie app? Make sure you ask users if you can access the camera. You can do it right before user attempts to take a selfie.

Photos
Not only do you need access to the camera but you need another permission to access the photo library. Those two usually go hand in hand.

Health & Motion activity
If you are creating a fitness app it might be beneficial to sync with Apple Health. Also consider obtaining permissions for motion activity and fitness to track calories and activity of the person through your app.

HomeKit
If you are building a new world with smart homes that make it possible to control blinds, doors and coffee through your app with the help of Apple devices then you might want to set up your work through HomeKit.
*/

// NSPhotoLibraryAddUsageDescription	Your app adds photos to the user's photo library
// NSPhotoLibraryUsageDescription	Your app accesses the user's photo library
// NSCameraUsageDescription	Your app uses the device camera
// NSLocationAlwaysUsageDescription	Your app uses location services all the time
// NSLocationWhenInUseUsageDescription	Your app uses location services only when the app is running
// NSLocationUsageDescription	DEPRECATED: Update to one of the above instead
// NSContactsUsageDescription	Your app uses the address book
// NSCalendarsUsageDescription	Your app uses or modifies the user's calendar information
// NSRemindersUsageDescription	Your app creates reminders in the Reminders app
// NSHealthShareUsageDescription	Your app uses data from the Health app
// NSHealthUpdateUsageDescription	Your app provides health information to the Health app
// NFCReaderUsageDescription	Your app uses the NFC reader
// NSBluetoothPeripheralUsageDescription	Your app works with Bluetooth devices
// NSMicrophoneUsageDescription	Your app uses the device microphone
// NSSiriUsageDescription	Your app provides a SiriKit Intent
// NSSpeechRecognitionUsageDescription	Your app uses speech recognition
// NSMotionUsageDescription	Your app uses the device motion tracking hardware
// NSAppleMusicUsageDescription	Your app uses Apple Music integration
// NSFaceIDUsageDescription	Your app uses FaceID
