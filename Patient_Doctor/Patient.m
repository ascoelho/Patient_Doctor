//
//  Patient.m
//  Patient_Doctor
//
//  Created by Anthony Coelho on 2016-05-05.
//  Copyright © 2016 Vectura. All rights reserved.
//

#import "Patient.h"


@implementation Patient


-(instancetype)init{
    return [self initWithName:@"John" Age:20 validHealthCard:YES symptoms:@"headache"];
}

-(instancetype)initWithName:(NSString *)name Age:(int)age validHealthCard:(BOOL)validHC symptoms:(NSString *)symptoms{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        _hasValidHealthCard = validHC;
        _symptoms = symptoms;
    }
    return self;
}


-(void)visitDoctor:(Doctor *)doctor{
  

    
    [doctor checkValidHealthCard:self];

}

-(void)requestMedication:(Doctor *)doctor{
    
    [doctor checkPatientDatabase:self];
    
    
}
@end
