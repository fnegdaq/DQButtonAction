//
//  SingletonDictionary.h
//  DQButtonAction
//
//  Created by fengdaq on 15/8/6.
//  Copyright (c) 2015年 feng. All rights reserved.
//

#import <Foundation/Foundation.h>


#define GET_OBJECT(key) [SingletonDictionary objectForKey:(key)]
#define SET_OBJECT(object,key) [SingletonDictionary addObject:(object) forKey:(key)]

#import <Foundation/Foundation.h>

@interface SingletonDictionary : NSObject

+ (id)objectForKey:(NSString *)key;
+ (void)addObject:(id)object forKey:(NSString *)key;


@end
