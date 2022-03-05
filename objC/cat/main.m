#import <Foundation/Foundation.h>
#import <stdio.h>

#define NSLog(FORMAT, ...) fprintf(stderr, "%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        if (argc > 1) {
            NSString *file = [NSString stringWithFormat:@"%s" , argv[1]];
            NSFileManager *fileManager = [NSFileManager defaultManager];
            NSData *bytes = [fileManager contentsAtPath:file];
            NSString *text = [NSString stringWithUTF8String:[bytes bytes]];
            NSLog(@"%@", text);
        } else {
            printf("File not found\n");
            exit(1);
        }
    }
    return 0;
}
