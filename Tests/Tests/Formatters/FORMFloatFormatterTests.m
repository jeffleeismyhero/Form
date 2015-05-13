@import XCTest;

#import "FORMFloatFormatter.h"

@interface FORMFloatFormatterTests : XCTestCase

@end

@implementation FORMFloatFormatterTests

- (void)testFormatString {
    FORMFloatFormatter *formatter = [FORMFloatFormatter new];
    XCTAssertEqualObjects(@"123,00", [formatter formatString:@"123,00" reverse:NO]);
    XCTAssertEqualObjects(@"123,00", [formatter formatString:@"123.00" reverse:NO]);
}

@end
