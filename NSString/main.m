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
        NSString *str = @"This is NSString";
        NSLog(@"str : %@",str);
        
        //immutable class
        //NSString은하나의 인스턴스에 값을 다이렉트로 재할당이 불가하다.
        NSString *result;
        //6index부터 끝까지
        result = [str substringFromIndex:6];
        NSLog(@"result : %@",result);
        //0부터 2index까지
        result = [str substringToIndex:3];
        NSLog(@"result : %@",result);
        
        
        result = [[str substringToIndex:11]substringFromIndex:8];
        NSLog(@"result : %@",result);
        
        //index 8부터 3길이까지
        result = [str substringWithRange:NSMakeRange(8, 3)];
        NSLog(@"result : %@",result);
        result = [[str substringWithRange:NSMakeRange(8, 3)]lowercaseString];
        NSLog(@"result : %@",result);
        
        //바로 값할당 불가 하지만 값 다이렉트로 재할당 가능
        NSMutableString *mstr = [NSMutableString stringWithString:str];
        [mstr appendString:@" and NSMutableString"];
        NSLog(@"mstr : %@",mstr);
        
        [mstr insertString:@"Mutable" atIndex:10];
        NSLog(@"mstr : %@",mstr);
        
        
        
        //배열
        NSArray *month = [[NSArray alloc]initWithObjects:@"1월",@"2월",@"3월",@"4월",@"5월",@"6월",@"7월",@"8월",@"9월",@"10월", nil];
        
//        for(int i = 0; i<month.count; i++){
//            //NSLog(@"month : %@",month[i]);
//            NSLog(@"month : %@",[month objectAtIndex:i]);
//        }
        for (NSString *strTemp in month) {
            NSLog(@"month : %@",strTemp);
        }
        
        //가변 배열 추가삭제가능 연산은더느림
        NSMutableArray *mmonth = [NSMutableArray arrayWithArray:month];
        [mmonth addObject:@"11월"];
        [mmonth addObject:@"12월"];
        for (NSString *strTemp in mmonth) {
            NSLog(@"month : %@",strTemp);
        }
    }
    return 0;
}
