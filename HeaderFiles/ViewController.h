// ViewController.h

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *datoCuriosoLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *selectorCategoria;

- (IBAction)mostrarDatoCurioso:(id)sender;

@end
