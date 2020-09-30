
#import "RNGeouniqTest.h"

@implementation RNGeouniqTest

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(enable:(RCTResponseSenderBlock) successCallback)
{
	successCallback(@[]);
}


@end
  
