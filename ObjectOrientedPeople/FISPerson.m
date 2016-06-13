//
//  FISPerson.m
//  ObjectOrientedPeople
//
//  Created by Betty Fung on 6/13/16.
//  Copyright © 2016 al-tyus.com. All rights reserved.
//

#import "FISPerson.h"

@interface FISPerson ()

@property (strong, nonatomic, readwrite) NSString *name;
@property (nonatomic, readwrite) NSUInteger ageInYears;
@property (nonatomic, readwrite) NSUInteger heightInInches;
@property (strong, nonatomic, readwrite) NSMutableArray *skills;

@end



@implementation FISPerson


-(instancetype) init{
    
    self = [self initWithName:@"Betty" ageInYears:26 heightInInches:67];
    
    return self;
}


-(instancetype) initWithName:(NSString *)name ageInYears:(NSUInteger)ageInYears{
    
    self = [self initWithName:name ageInYears:ageInYears heightInInches:65];
    
    return self;
}


-(instancetype) initWithName:(NSString *)name ageInYears:(NSUInteger)ageInYears heightInInches:(NSUInteger)heightInInches{
    
    self = [super init];
    
    if (self) {
        
        _name = name;
        _ageInYears = ageInYears;
        _heightInInches = heightInInches;
        
        _skills = [[NSMutableArray alloc]init];
        
    }
    
    return self;
}



-(NSString *)celebrateBirthday{
    
    self.ageInYears++;
    
    NSString *birthdayOrdinal = [self ordinalForInteger:self.ageInYears];
    
    NSString *birthdayGreeting = [NSString stringWithFormat:@"HAPPY %lu%@ BIRTHDAY, %@!!!", self.ageInYears, [birthdayOrdinal uppercaseString], [self.name uppercaseString]];
    
    return birthdayGreeting;
}



//private helper method for celebrateBirthday
- (NSString *)ordinalForInteger:(NSUInteger)integer {
    NSString *ordinal = @"th";
    if (integer % 10 == 1 && integer % 100 != 11) {
        ordinal = @"st";
    } else if (integer % 10 == 2 && integer % 100 != 12) {
        ordinal = @"nd";
    } else if (integer % 10 == 3 && integer % 100 != 13) {
        ordinal = @"rd";
    }
    return ordinal;
}




-(void)learnSkillBash{
    
    if([self.skills containsObject:@"bash"]){
        return;
    }
    else{
        [self.skills addObject:@"bash"];
    }
    //returns nothing
}



-(void)learnSkillXcode{
    
    if([self.skills containsObject:@"Xcode"]){
        return;
    }
    else{
        [self.skills addObject:@"Xcode"];
    }
    
    //returns nothing
}



-(void)learnSkillObjectiveC{
    
    if([self.skills containsObject:@"Objective-C"]){
        return;
    }
    else{
        [self.skills addObject:@"Objective-C"];
    }
    
    //returns nothing;
}



-(void)learnSkillObjectOrientedProgramming{
    
    if([self.skills containsObject:@"Object-Oriented Programming"]){
        return;
    }
    else{
        [self.skills addObject:@"Object-Oriented Programming"];
    }
    
    //returns nothing;
}



-(void)learnSkillInterfaceBuilder{
    
    if([self.skills containsObject:@"Interface Builder"]){
        return;
    }
    else{
        [self.skills addObject:@"Interface Builder"];
    }
    
    //returns nothing;
}



-(BOOL)isQualifiedTutor{
    
    if([self.skills count] >= 4){
        return YES;
    }
    
    return NO; 
}

@end
