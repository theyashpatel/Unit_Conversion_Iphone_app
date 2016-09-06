import UIKit

class MainViewController: UIViewController {
    
    
    
    @IBOutlet var FromSegment: UISegmentedControl!
    @IBOutlet var ToSegment: UISegmentedControl!
    @IBOutlet var MainLabel: UILabel!
    @IBOutlet var TextField: UITextField!
    
    // Declaring Variable
    var FromSegmentIndexOne = String()
    var FromSegmentIndexTwo = String()
    
    var ToSegmentIndexOne = String()
    var ToSegmentIndexTwo = String()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        FromSegment.setTitle(FromSegmentIndexOne, forSegmentAtIndex: 0)
        FromSegment.setTitle(FromSegmentIndexTwo, forSegmentAtIndex: 1)
        
        ToSegment.setTitle(ToSegmentIndexOne, forSegmentAtIndex: 0)
        ToSegment.setTitle(ToSegmentIndexTwo, forSegmentAtIndex: 1)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func Calculate(sender: UIButton) {
        
        
        if TextField.text == "" {
            MainLabel.text = "Atleast enter a value"
        }
        
        else {
            
            if isdouble(Arrayofstrings: TextField.text!){
                
                let answer =  performCalculation(From: FromSegment.titleForSegmentAtIndex(FromSegment.selectedSegmentIndex)!, To: ToSegment.titleForSegmentAtIndex(ToSegment.selectedSegmentIndex)!, TextField: Double(TextField.text!)!)
                
                
                MainLabel.text = answer
                
            }
            
            else {
                
                MainLabel.text = "Enter Valid Number"
                
            }
            
        }
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

func isdouble(Arrayofstrings a:String ...) -> Bool {
    print (a)
    var isdub = true
    for i in a {
        
        let doubcheck:Double? = Double(i)
        if doubcheck == nil{
            isdub = false
        }
        
    }
    print (isdub)
    return isdub
}

func performCalculation(From f:String , To t:String , TextField num:Double) -> String {
    
    if f == t {
        return "Dont Be Dumb :("
    }
    
    else if f == "Dollar" && t == "Indian Rupee" {
        
        let answer = "\(round(num * 66.30*100)/100) \(t)"
        return answer
    }
        
    else if f == "Indian Rupee" && t == "Dollar" {
        
        let answer = "\(round(num * 0.02*100)/100) \(t)"
        return answer
        
    }
        
    else if f == "Meter" && t == "Centimeter" {
        
        let answer = "\(round(num * 100*100)/100) \(t)"
        return answer
        
    }
        
    else if f == "Centimeter" && t == "Meter" {
        
        let answer = "\(round(num * 0.01*100)/100) \(t)"
        return answer
        
    }
        
    else if f == "Celsius" && t == "Fahrenheit" {
        
        let fahrenheit = round(((num * (9/5)) + 32)*100)/100
        let answer = "\(fahrenheit) \(t)"
        return answer
        
    }
        
    else if f == "Fahrenheit" && t == "Celsius" {
        
        let celsius = round(((num - 32)*(5/9))*100)/100
        let answer = "\(celsius) \(t)"
        return answer
        
    }
    
    else {
        
        return "Boooo"
    }
    
}





