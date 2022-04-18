//
//  main.m
//  NSString
//
//  Created by beintech on 2022/04/18.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSString *str = [[NSString alloc]init];
//        str = @"This is NSString";
        //convenience method
        //NSString *str = [[NSString alloc]initWithString:@"This is NSString"];
        
        //java처럼 string의경우만 바로 초기화 가능
        NSString * str = @"This is NSString";
        NSLog(@"str : %@",str);
    }
    return 0;
}
