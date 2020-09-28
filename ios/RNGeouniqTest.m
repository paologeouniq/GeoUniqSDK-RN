
#import "RNGeouniqTest.h"
#import "GeoUniq/GeoUniq-Swift.h"

@implementation RNGeouniqTest

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

RCT_EXPORT_MODULE(RNGeouniqTest)

RCT_EXPORT_METHOD(enable:(RCTResponseSenderBlock) successCallback)
{
	[[GeoUniq sharedInstance] enable];
	successCallback(@[]);
}

RCT_EXPORT_METHOD(disable:(RCTResponseSenderBlock) successCallback)
{
	[[GeoUniq sharedInstance] disable];
	successCallback(@[]);
}

RCT_EXPORT_METHOD(isDeviceIdAvailable:(RCTResponseSenderBlock)successCallback)
{
	bool isAvailable = [[GeoUniq sharedInstance] getDeviceId] != nil;
	successCallback(@[[NSNumber numberWithBool:isAvailable]]);
}

RCT_EXPORT_METHOD(getDeviceId:(RCTResponseSenderBlock)successCallback)
{
	NSString* deviceID = [[GeoUniq sharedInstance] getDeviceId];
	if (deviceID != nil) {
		successCallback(@[deviceID]);
	} else {
		successCallback(@[]);
	}
}

RCT_EXPORT_METHOD(setCustomId:(NSString *)customId successCallback:(RCTResponseSenderBlock)successCallback)
{
	bool success = [[GeoUniq sharedInstance] setCustomId:customId];
	successCallback(@[[NSNumber numberWithBool:success]]);
	
}

RCT_EXPORT_METHOD(setPrivacyConsent:(NSString *)consent value:(BOOL)value errorCallback:(RCTResponseErrorBlock)errorCallback successCallback:(RCTResponseSenderBlock)successCallback)
{
	NSArray *consentArray = @[@"CUSTOMIZATION_AND_ADTARGETING", @"ANALYSIS"];
	NSInteger index = [consentArray indexOfObject:consent];
	NSError * error = [NSError errorWithDomain: @"consent argument not exist" code:700 userInfo:nil];
	if (index == NSNotFound) {
		errorCallback(error);
	} else {
		switch (index) {
			case ConsentItemCustomization: {
				[[GeoUniq sharedInstance] setPrivacyConsent:ConsentItemCustomization value:value];
				successCallback(@[]);
				break;
			}
			case ConsentItemAnalisys: {
				[[GeoUniq sharedInstance] setPrivacyConsent:ConsentItemAnalisys value:value];
				successCallback(@[]);
				break;
			}
			default: {
				errorCallback(error);
				break;
			}
		}
	}
}

RCT_EXPORT_METHOD(getPrivacyConsentsMap:(RCTResponseErrorBlock)errorCallback successCallback:(RCTResponseSenderBlock)successCallback)
{
	ConsentsMap* map = [[GeoUniq sharedInstance] getPrivacyConsentsMap];
	bool valueCustomization = [map getWithKey: ConsentItemCustomization];
	bool valueAnalisys = [map getWithKey: ConsentItemAnalisys];
	NSDictionary *dic = @{@"CUSTOMIZATION_AND_ADTARGETING": [NSNumber numberWithBool:valueCustomization], @"ANALYSIS" : [NSNumber numberWithBool:valueAnalisys]};
	successCallback(@[dic]);
}

RCT_EXPORT_METHOD(getPrivacyConsent:(NSString *)consent errorCallback:(RCTResponseErrorBlock)errorCallback successCallback:(RCTResponseSenderBlock)successCallback)
{
	NSArray *consentArray = @[@"CUSTOMIZATION_AND_ADTARGETING", @"ANALYSIS"];
	NSInteger index = [consentArray indexOfObject:consent];
	NSError * error = [NSError errorWithDomain: @"consent argument not exist" code:700 userInfo:nil];
	if (index == NSNotFound) {
		errorCallback(error);
	} else {
		switch (index) {
			case ConsentItemCustomization: {
				BOOL valueConsent = [[GeoUniq sharedInstance] getPrivacyConsent:ConsentItemCustomization];
				successCallback(@[[NSNumber numberWithBool:valueConsent]]);
				break;
			}
			case ConsentItemAnalisys: {
				bool valueConsent = [[GeoUniq sharedInstance] getPrivacyConsent:ConsentItemAnalisys];
				successCallback(@[[NSNumber numberWithBool:valueConsent]]);
				break;
			}
			default: {
				errorCallback(error);
				break;
			}
		}
	}
}

RCT_EXPORT_METHOD(showPrivacyPolicyAndSet:(RCTResponseErrorBlock)errorCallback successCallback:(RCTResponseSenderBlock)successCallback)
{
	[[GeoUniq sharedInstance] showPrivacyPolicyAndSetWithCompletion:^(ConsentsMap * map) {
		bool valueCustomization = [map getWithKey: ConsentItemCustomization];
		bool valueAnalisys = [map getWithKey: ConsentItemAnalisys];
		NSDictionary *dic = @{@"CUSTOMIZATION_AND_ADTARGETING": [NSNumber numberWithBool:valueCustomization], @"ANALYSIS" : [NSNumber numberWithBool:valueAnalisys]};
		successCallback(@[dic]);
	}];
}

RCT_EXPORT_METHOD(getSDKVersion:(RCTResponseSenderBlock)successCallback) {
	successCallback(@[[GeoUniq FrameworkVersionName]]);
}

// Deprecated methods
RCT_EXPORT_METHOD(showConsentDialogAndSet:(RCTResponseErrorBlock)errorCallback successCallback:(RCTResponseSenderBlock)successCallback)
{
	[[GeoUniq sharedInstance] showConsentDialogAndSetWithCompletion:^(BOOL success) {
		successCallback(@[[NSNumber numberWithBool:success]]);
	}];
}

RCT_EXPORT_METHOD(setConsentStatus:(BOOL)status successCallback:(RCTResponseSenderBlock)successCallback)
{
	[[GeoUniq sharedInstance] setConsentStatusWithIsGranted: status];
	successCallback(@[]);
}

RCT_EXPORT_METHOD(getConsentStatus:(RCTResponseSenderBlock)successCallback)
{
	bool status = [[GeoUniq sharedInstance] getConsentStatus];
	successCallback(@[[NSNumber numberWithBool:status]]);
}

@end
  
