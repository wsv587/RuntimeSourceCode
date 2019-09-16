//
//  main.m
//  runtimetest
//
//  Created by sw on 2019/9/17.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <objc/message.h>
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Class newClass = objc_allocateClassPair(objc_getClass("NSObject"), "newClass", 0);
        objc_registerClassPair(newClass);
        id newObject = [[newClass alloc]init];
        NSLog(@"%@",newObject);
        
        NSObject *obj = [[NSObject alloc] init];
    }
    return 0;
}
