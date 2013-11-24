//
//  MACViewController.m
//  HW7 CoreLocation & Mapkit
//
//  Created by Macy Aviles on 11/22/13.
//  Copyright (c) 2013 Macy Aviles. All rights reserved.
//

#import "MACViewController.h"

@interface MACViewController ()

@end

@implementation MACViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.mapView.delegate = self;
    self.mapView.mapType = MKMapTypeStandard;
    self.mapView.showsUserLocation = YES;
    self.searchButton.hidden = YES;
    
}

- (IBAction)setMapType:(UISegmentedControl *)sender
{
    switch (sender.selectedSegmentIndex)
    {
        case 0:
            self.mapView.mapType = MKMapTypeStandard;
            break;
        case 1:
            self.mapView.mapType = MKMapTypeSatellite;
            break;
        case 2:
            self.mapView.mapType = MKMapTypeHybrid;
            break;
        default:
            break;
    }
}

- (IBAction)zoomToCurrentLocation:(UIBarButtonItem *)sender
{
    float spanX = 0.00725;
    float spanY = 0.00725;
    MKCoordinateRegion region;
    region.center.latitude = self.mapView.userLocation.coordinate.latitude;
    region.center.longitude = self.mapView.userLocation.coordinate.longitude;
    region.span.latitudeDelta = spanX;
    region.span.longitudeDelta = spanY;
    self.searchButton.hidden = YES;
    [self.mapView setRegion:region animated:YES];
    self.mapView.userLocation.title = @"I am here";
    self.mapView.userLocation.subtitle = @"This is the location you are currently at. Deal with it.";
}

- (void)mapView:(MKMapView *)mapView regionDidChangeAnimated:(BOOL)animated
{
    self.searchButton.hidden = NO;
}

- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    [self.mapView setCenterCoordinate:userLocation.coordinate animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    // library
    double pointOneLatitude = 47.669825;
    double pointOneLongitude = -122.384365;
    CLLocationCoordinate2D pointOneCoordinate =
    {pointOneLatitude, pointOneLongitude};
    MACMapAnnotations *pointOneAnnotation =
    [[MACMapAnnotations alloc] initWithCoordinate:pointOneCoordinate];
    [self.mapView addAnnotation:pointOneAnnotation];
    
    //Jo-Ann's Fabric
    double pointTwoLatitude = 47.669738;
    double pointTwoLongitude = -122.385696;
    CLLocationCoordinate2D pointTwoCoordinate =
    {pointTwoLatitude, pointTwoLongitude};
    MACMapAnnotations *pointTwoAnnotation =
    [[MACMapAnnotations alloc] initWithCoordinate:pointTwoCoordinate];
    [self.mapView addAnnotation:pointTwoAnnotation];
    
    [self.mapView setRegion:MKCoordinateRegionMakeWithDistance(pointTwoCoordinate, 300000, 300000)
                   animated:YES];
}


@end
