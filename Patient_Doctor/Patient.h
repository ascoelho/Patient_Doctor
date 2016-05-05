//
//  Patient.h
//  Patient_Doctor
//
//  Created by Anthony Coelho on 2016-05-05.
//  Copyright © 2016 Vectura. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"


@interface Patient : NSObject

@property (copy, nonatomic) NSString *name;
@property (copy, nonatomic) NSString *symptoms;
@property int age;
@property BOOL hasValidHealthCard;

-(instancetype)initWithName:(NSString *)name Age:(int)age validHealthCard:(BOOL)validHC symptoms:(NSString *)symptoms;



-(void)visitDoctor:(Doctor *)doctor;
-(void)requestMedication:(Doctor *)doctor;

@end
