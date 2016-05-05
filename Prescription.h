//
//  Prescription.h
//  Patient_Doctor
//
//  Created by Anthony Coelho on 2016-05-05.
//  Copyright © 2016 Vectura. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Prescription : NSObject

@property (copy, nonatomic) NSString *type;

-(instancetype)initWithSymptoms:(NSString *)symptoms;

@end
