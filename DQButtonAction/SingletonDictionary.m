//
//  SingletonDictionary.m
//  DQButtonAction
//
//  Created by fengdaq on 15/8/6.
//  Copyright (c) 2015年 feng. All rights reserved.
//

#import "SingletonDictionary.h"

static NSMapTable *singletonDictionary;

@implementation SingletonDictionary

+ (void)initialize
{
    if (self == [SingletonDictionary class]) {
        // 强引用key值 弱引用object
        singletonDictionary = [NSMapTable  strongToWeakObjectsMapTable];
    }
}

+ (id)objectForKey:(NSString *)key
{
    return [singletonDictionary objectForKey:key];
}

+ (void)addObject:(id)object forKey:(NSString *)key
{
    if (object == nil || key == nil) {
        return;
    }
    
    if ([singletonDictionary objectForKey:key] == nil) {
        [singletonDictionary setObject:object forKey:key];
    }
    
}
@end
