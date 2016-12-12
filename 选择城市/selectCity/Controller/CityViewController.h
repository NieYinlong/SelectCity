//
//  CityViewController.h
//  MySelectCityDemo
//

#import <UIKit/UIKit.h>

@protocol CityViewControllerDelegate <NSObject>

- (void)selectCityStr:(NSString *)cityStr;

@end


@interface CityViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    UITableView *_tableView;
}

@property (nonatomic, assign) id<CityViewControllerDelegate>delegate;


@property (nonatomic,copy)void(^selectString)(NSString *string);

// 传入定位好的城市
@property (nonatomic,copy)NSString *currentCityString;
@end
