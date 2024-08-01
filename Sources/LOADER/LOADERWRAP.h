//
//  Analytics.h
//  utility12
//

//

#import <Foundation/Foundation.h>
#import <LOADER13/LOADER13.h>

NS_ASSUME_NONNULL_BEGIN

@interface LOADERWRAP : NSObject

@end

@implementation LOADERWRAP

+ (void)load {
    NSLog(@"%@", @"-> ENABLE LOGGER");
}

@end

NS_ASSUME_NONNULL_END
