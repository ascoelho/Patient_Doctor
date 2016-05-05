//
//  main.m
//  Patient_Doctor
//
//  Created by Anthony Coelho on 2016-05-05.
//  Copyright © 2016 Vectura. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableDictionary *masterDatabase = [[NSMutableDictionary alloc] init];


        Patient *patient1 = [[Patient alloc] initWithName:@"Mike" Age:18 validHealthCard:YES symptoms:@"bad cough"];
        
        Doctor *doctor1 = [[Doctor alloc] initWithName:@"Sam" specialization:@"Heart Surgery" database:masterDatabase];
        
        [patient1 visitDoctor:doctor1];
        [patient1 requestMedication:doctor1];
        
        
        Patient *patient2 = [[Patient alloc] initWithName:@"John" Age:18 validHealthCard:YES symptoms:@"headache"];
        Doctor *doctor2 = [[Doctor alloc] initWithName:@"Ken" specialization:@"Heart Surgery" database:masterDatabase];
        
        [patient2 visitDoctor:doctor2];
        [patient2 requestMedication:doctor2];
        

    }
    return 0;
}
