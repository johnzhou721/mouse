//
//  ObjcQueue.hpp
//  Mouse
//
//  Created by John Zhou on 7/30/23.
//

#import <Foundation/Foundation.h>

@interface QueueWrapper : NSObject

- (void)enqueue:(id)value;
- (void)dequeue;
- (id)front;
- (BOOL)isEmpty;
- (NSUInteger)size;

@end
