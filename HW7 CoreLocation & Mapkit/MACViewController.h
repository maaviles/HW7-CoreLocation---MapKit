//
//  MACViewController.h
//  HW7 CoreLocation & Mapkit
//
//  Created by Macy Aviles on 11/22/13.
//  Copyright (c) 2013 Macy Aviles. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
#import "MACMapAnnotations.h"

@interface MACViewController : UIViewController <MKMapViewDelegate>

@property (strong, nonatomic) IBOutlet MKMapView *mapView;
@property (strong, nonatomic) IBOutlet UIButton *searchButton;

@end
