//
//  Doctor.m
//  Patient_Doctor
//
//  Created by Anthony Coelho on 2016-05-05.
//  Copyright © 2016 Vectura. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"
#import "Prescription.h"


@implementation Doctor




-(instancetype)initWithName:(NSString *)name specialization:(NSString *)specialization database:(NSMutableDictionary *)database{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = specialization;
        
        NSMutableArray *patientDatabase = [[NSMutableArray alloc]  init];
        _patientDatabase = patientDatabase;
        _masterDatabase = database;
        
    }
    
    return self;
}


-(void)checkValidHealthCard:(Patient *)patient {
    
    if (patient.hasValidHealthCard == YES) {
//        NSLog(@"Doctor has accepted patient");
        [self.patientDatabase addObject:patient];
        
    }
    else {
//         NSLog(@"Doctor cannot accept patient");
    }
    
}

- (void)checkPatientDatabase:(Patient *)patient {
    
    if ([self.patientDatabase containsObject:patient]) {
//        NSLog(@"Doctor can provide medication");
        
        Prescription *prescription = [self providePrescriptionForSymptoms:patient.symptoms];
        
        [self.masterDatabase setObject:prescription forKey:patient.symptoms];

//        NSLog(@"The doctor has prescribed: %@",prescription.type);
    }
    else {
//        NSLog(@"Doctor cannot provide medication");
    }
    
}

- (Prescription *)providePrescriptionForSymptoms:(NSString *)symptoms {
    
    Prescription *prescription = [[Prescription alloc] initWithSymptoms:symptoms];
    return prescription;
}


@end

