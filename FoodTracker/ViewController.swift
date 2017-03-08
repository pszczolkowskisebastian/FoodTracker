
import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //MARK Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Handle the text field user input
        
        nameTextField.delegate = self
        
    }
    
    //MARK UiTextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        // hide the keyboard
        
        textField.resignFirstResponder()
        
        return true
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        mealNameLabel.text = textField.text
    
    }
    
    //MARK Action
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }
    
}

