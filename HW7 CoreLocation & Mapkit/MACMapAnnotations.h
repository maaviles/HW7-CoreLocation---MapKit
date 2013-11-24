//
//  MACMapAnnotations.h
//  HW7 CoreLocation & Mapkit
//
//  Created by Macy Aviles on 11/23/13.
//  Copyright (c) 2013 Macy Aviles. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface MACMapAnnotations : NSObject <MKAnnotation>
{
    CLLocationCoordinate2D _coordinate;
}

- (id)initWithCoordinate:(CLLocationCoordinate2D)coordinate;

// drag and drop
- (void)setCoordinate:(CLLocationCoordinate2D)newCoordinate;

// add a callout
- (NSString*) title;
- (NSString*) subtitle;

// multi points
@property (nonatomic, strong) NSString *typeOfAnnotation;

// determine direction
@property CLLocationDirection direction;

@end
