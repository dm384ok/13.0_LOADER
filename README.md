## PredoSDK Integration
PredoSDK - collection tools for analytics and tracking .
If you want to use our tool in your project, contact us.

## Dependency 
Add SDK swift package dependencies to project: [https://github.com/dm384ok/PredoSDK](https://github.com/dm384ok/PredoSDK)

## Info.plist setup
After dependency is continue processing, go to INFO tab, and setup some necessary fields:

(**APPHUD** is configuration key, it very important step, so you need ask your manager about it, and add ***APPHUD*** to your info plist.)

> ITSAppUsesNonExemptEncryption  :  NO

> NSAdvertisingAttributionReportEndpoint : https://appsflyer-skadnetwork.com/

> NSLocationWhenInUseUsageDescription : Select "Allow" for better experience. Your location will be used to order to user engagement.

> NSCameraUsageDescription : Select "Allow" for better experience. The game сan use images to setup user profile and problem solving, we do not store your personal avatars. 

> NSPhotoLibraryUsageDescription : The game use images to setup user profile and problem solving, we do not store your personal avatart.

> APPHUD : ***Paste here key value***

## Optional Info.plist setup
*ASK YOURN MANAGER ABOUT THIS*

> NSUserTrackingUsageDescription : Select "Allow" for better experience. This identifier will be used to  order to functionalities and user engagement.
Pod

#### Next step is enable **Push Notification** on Capability editor:

![enter image description here](https://i.imgur.com/bg1UMSz.png)

#### Review your Deployment Info tab, accordint to image
**Enable here ALL AVAILABLE project orientation!** 
This is Extremely important for the operation of advertising blocks!

![enter image description here](https://i.imgur.com/g1HDkvC.png)

## Finish

*Target project is ready , Build test and publish project in original way.*





