import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var TypeSegment: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let MainDestinationViewController : MainViewController = segue.destinationViewController as! MainViewController
        
        let segment = TypeSegment.selectedSegmentIndex
        
        switch segment {
            
        case 0 :
            
            MainDestinationViewController.FromSegmentIndexOne = "Indian Rupee"
            MainDestinationViewController.FromSegmentIndexTwo = "Dollar"
            MainDestinationViewController.ToSegmentIndexOne = "Dollar"
            MainDestinationViewController.ToSegmentIndexTwo = "Indian Rupee"
            
        case 1 :
            
            MainDestinationViewController.FromSegmentIndexOne = "Celsius"
            MainDestinationViewController.FromSegmentIndexTwo = "Fahrenheit"
            MainDestinationViewController.ToSegmentIndexOne = "Fahrenheit"
            MainDestinationViewController.ToSegmentIndexTwo = "Celsius"
            
        case 2 :
            
            MainDestinationViewController.FromSegmentIndexOne = "Meter"
            MainDestinationViewController.FromSegmentIndexTwo = "Centimeter"
            MainDestinationViewController.ToSegmentIndexOne = "Centimeter"
            MainDestinationViewController.ToSegmentIndexTwo = "Meter"
            
        default:
            print ("Error @ preparing segue")
            
            
        }
    }

}

