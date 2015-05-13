#import "FORMFormatter.h"

@interface FORMFloatFormatter : FORMFormatter

- (NSString *)formatString:(NSString *)string reverse:(BOOL)reverse formatter:(NSNumberFormatter *)formatter;

@end
