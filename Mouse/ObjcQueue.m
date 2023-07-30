//
//  ObjcQueue.m
//  Mouse
//
//  Created by John Zhou on 7/30/23.
//

#include "ObjcQueue.h"

@interface QueueWrapper ()

@property (nonatomic, strong) NSMutableArray *queue;

@end

@implementation QueueWrapper

- (instancetype)init {
    self = [super init];
    if (self) {
        self.queue = [NSMutableArray array];
    }
    return self;
}

- (void)enqueue:(id)value {
    [self.queue addObject:value];
}

- (void)dequeue {
    if (![self isEmpty]) {
        [self.queue removeObjectAtIndex:0];
    }
}

- (id)front {
    if (![self isEmpty]) {
        return [self.queue firstObject];
    }
    return nil;
}

- (BOOL)isEmpty {
    return [self.queue count] == 0;
}

- (NSUInteger)size {
    return [self.queue count];
}

@end
