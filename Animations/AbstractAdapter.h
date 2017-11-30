//
//  AbstractAdapter.h
//  Animations
//
//  Created by LeiLuRong on 16/1/26.
//  Copyright © 2016年 LeiLuRong. All rights reserved.
//

#import <Foundation/Foundation.h>

/////////////////////////////////////////////////////////
//                                                     //
//                    AbstractAdapter <== inputData    //
//                           |                         //
//                           |                         //
//    outputData <== startDataTransform                //
//                                                     //
/////////////////////////////////////////////////////////

@interface AbstractAdapter : NSObject

/**
 *  Input data.
 */
@property (nonatomic, strong) id inputData;

/**
 *  Start data transform.
 */
- (void)startDataTransform;

/**
 *  Output data.
 */
@property (nonatomic, strong) id outputData;

@end
