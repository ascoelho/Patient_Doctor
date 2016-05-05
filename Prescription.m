//
//  Prescription.m
//  Patient_Doctor
//
//  Created by Anthony Coelho on 2016-05-05.
//  Copyright © 2016 Vectura. All rights reserved.
//

#import "Prescription.h"

@implementation Prescription

-(instancetype)init{
    return [self initWithSymptoms:@"headache"];
}

-(instancetype)initWithSymptoms:(NSString *)symptoms{
    self = [super init];
    if (self) {
        
        if ([symptoms isEqualToString:@"headache"]){
            _type = @"Advil";
        }
        else if ([symptoms isEqualToString:@"bad cough"]){
            _type = @"Buckleys";
        }
        else if ([symptoms isEqualToString:@"cold"]){
            _type = @"Sleep";
        }
        
    }
    return self;
}

@end
