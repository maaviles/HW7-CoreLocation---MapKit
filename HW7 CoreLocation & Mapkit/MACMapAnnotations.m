//
//  MACMapAnnotations.m
//  HW7 CoreLocation & Mapkit
//
//  Created by Macy Aviles on 11/23/13.
//  Copyright (c) 2013 Macy Aviles. All rights reserved.
//

#import "MACMapAnnotations.h"

@implementation MACMapAnnotations

@synthesize coordinate =_coordinate;

- (id)initWithCoordinate:(CLLocationCoordinate2D)coordinate
{
    self = [super init];
    if (self != nil)
    {
        _coordinate = coordinate;
    }
    return self;
}

- (void)setCoordinate:(CLLocationCoordinate2D)newCoordinate
{
    _coordinate = newCoordinate;
}

- (NSString*) title
{
    return @"MeepsTitle";
}

- (NSString*) subtitle
{
    return @"MeepSubtitle";
}

@end
