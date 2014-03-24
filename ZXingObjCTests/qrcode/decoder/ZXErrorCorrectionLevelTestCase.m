/*
 * Copyright 2012 ZXing authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#import "ZXErrorCorrectionLevelTestCase.h"

@implementation ZXErrorCorrectionLevelTestCase

- (void)testForBits {
  XCTAssertEqualObjects([ZXErrorCorrectionLevel errorCorrectionLevelM], [ZXErrorCorrectionLevel forBits:0]);
  XCTAssertEqualObjects([ZXErrorCorrectionLevel errorCorrectionLevelL], [ZXErrorCorrectionLevel forBits:1]);
  XCTAssertEqualObjects([ZXErrorCorrectionLevel errorCorrectionLevelH], [ZXErrorCorrectionLevel forBits:2]);
  XCTAssertEqualObjects([ZXErrorCorrectionLevel errorCorrectionLevelQ], [ZXErrorCorrectionLevel forBits:3]);
  @try {
    [ZXErrorCorrectionLevel forBits:4];
    XCTFail(@"Should have thrown an exception");
  } @catch (NSException *ex) {
    // good
  }
}

@end
