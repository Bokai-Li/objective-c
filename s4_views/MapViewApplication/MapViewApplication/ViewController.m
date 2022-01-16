//
//  ViewController.m
//  MapViewApplication
//
//  Created by Aaron Caines on 24/06/2017.
//  Copyright © 2017 Aaron Caines. All rights reserved.
//

#import "ViewController.h"
#import "MapPin.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    locationManager.delegate = self;
    self.mapKit.delegate = self;
    locationManager = [[CLLocationManager alloc] init];
    
    
    MKCoordinateRegion region;
    MKCoordinateSpan span;
    
    span.latitudeDelta = 0.005;
    span.longitudeDelta = 0.005;
    
    CLLocationCoordinate2D location;
    
    location.latitude = 34.0092429;
    location.longitude = -118.49760249999997;
    
    region.span = span;
    region.center = location;
    
    [self.mapKit setRegion:region animated:YES];
    
    MapPin *ann = [[MapPin alloc] init];
    ann.coordinate = location;
    [self.mapKit addAnnotation:ann];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)standard:(id)sender {
    
    self.mapKit.mapType = MKMapTypeStandard;
    
}

- (IBAction)satellite:(id)sender {
    
    self.mapKit.mapType = MKMapTypeSatellite;
}

- (IBAction)hybrid:(id)sender {
    
    self.mapKit.mapType = MKMapTypeHybrid;
}

- (IBAction)locate:(id)sender {
    
    [locationManager requestWhenInUseAuthorization];
    [locationManager requestAlwaysAuthorization];
    
    [locationManager startUpdatingLocation];
    
    self.mapKit.showsUserLocation = YES;
    
    
}

-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation {
    
    MKCoordinateRegion region;
    MKCoordinateSpan span;
    
    span.latitudeDelta = 0.005;
    span.longitudeDelta = 0.005;
    
    CLLocationCoordinate2D location;
    
    location.latitude = userLocation.coordinate.latitude;
    location.longitude = userLocation.coordinate.longitude;
    
    region.span = span;
    region.center = location;
    
    [self.mapKit setRegion:region animated:YES];
    
    
}



- (IBAction)directions:(id)sender {
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://maps.apple.com/maps?daddr=34.0092429,-118.49760249999997"] options:@{} completionHandler:nil];
    
    
}










@end
