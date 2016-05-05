//
//  Doctor.h
//  Patient_Doctor
//
//  Created by Anthony Coelho on 2016-05-05.
//  Copyright © 2016 Vectura. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Patient;
@class Prescription;

@interface Doctor : NSObject

@property (copy, nonatomic) NSString *name;
@property (copy, nonatomic) NSString *specialization;
@property (strong, nonatomic) NSMutableArray *patientDatabase;
@property (strong, nonatomic) NSMutableDictionary *masterDatabase;


-(instancetype)initWithName:(NSString *)name specialization:(NSString *)specialization database:(NSMutableDictionary *)database;
-(void)checkValidHealthCard:(Patient *)patient;
-(void)checkPatientDatabase:(Patient *)patient;
-(Prescription *)providePrescriptionForSymptoms:(NSString *)symptoms;

@end
