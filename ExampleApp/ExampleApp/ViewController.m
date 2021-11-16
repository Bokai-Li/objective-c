//
//  ViewController.m
//  ExampleApp
//
//  Created by Bokai Li on 11/15/21.
//

#import "ViewController.h"
#import "HTTPService.h"
#import "Video.h"
#import "VideoCell.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic,strong) NSArray *videoList;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    self.videoList = [[NSArray alloc]init];
    
    // Do any additional setup after loading the view.
    [[HTTPService instance] getTutorials:^(NSArray * _Nullable dataArray, NSString * _Nullable errMessage) {
        if (dataArray) {
            NSMutableArray *arr = [[NSMutableArray alloc]init];
            
            for (NSDictionary *d in dataArray){
                Video *vid = [[Video alloc]init];
                vid.videoTitle = [d objectForKey:@"title"];
                vid.videoDescription = [d objectForKey:@"description"];
                vid.thumbnailUrl = [d objectForKey:@"thumbnail"];
                vid.videoIframe = [d objectForKey:@"iframe"];
                
                [arr addObject:vid];
            }
            
            self.videoList = arr;
            // cannot update UI here because this will be run by background thread
            [self updateTableData]; // puts it in main thread/queue by using dispatch_async(dispatch_get_main_queue())
        } else if (errMessage){
            //Display alert to user
        }
    }];
}

-(void) updateTableData {
    dispatch_async(dispatch_get_main_queue(),^{
        [self.tableView reloadData];
    });
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    VideoCell *cell = (VideoCell*)[tableView dequeueReusableCellWithIdentifier:@"main"];
    if(!cell){
        cell = [[VideoCell alloc]init];
    }
    
    return cell;
}

-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    Video *video = [self.videoList objectAtIndex:indexPath.row];
    VideoCell *vidCell = (VideoCell*)cell;
    [vidCell updateUI:video];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.videoList.count;
}


@end
