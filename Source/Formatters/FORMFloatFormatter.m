#import "FORMFloatFormatter.h"

@implementation FORMFloatFormatter

- (NSString *)formatString:(NSString *)string reverse:(BOOL)reverse formatter:(NSNumberFormatter *)formatter {
    string = [super formatString:string reverse:reverse];
    if (!string) return nil;
    string = [string stringByReplacingOccurrencesOfString:@"." withString:formatter.decimalSeparator];

    NSNumber *number = [formatter numberFromString:string];

    if (reverse) {
	[formatter setNumberStyle:NSNumberFormatterNoStyle];
    } else {
	[formatter setNumberStyle:NSNumberFormatterDecimalStyle];
    }
    string = [formatter stringFromNumber:number];
    return string;
}

- (NSString *)formatString:(NSString *)string reverse:(BOOL)reverse {
  NSNumberFormatter *formatter = [NSNumberFormatter new];
  formatter.positiveFormat = @"###.##";
  formatter.decimalSeparator = @",";
  return [self formatString:string reverse:reverse formatter:formatter];
}

@end
