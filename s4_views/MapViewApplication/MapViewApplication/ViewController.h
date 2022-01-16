//
//  ViewController.h
//  MapViewApplication
//
//  Created by Aaron Caines on 24/06/2017.
//  Copyright © 2017 Aaron Caines. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate> {
    
    CLLocationManager *locationManager;
    
}

@property (weak, nonatomic) IBOutlet MKMapView *mapKit;

- (IBAction)standard:(id)sender;
- (IBAction)satellite:(id)sender;
- (IBAction)hybrid:(id)sender;
- (IBAction)locate:(id)sender;





- (IBAction)directions:(id)sender;


@end

