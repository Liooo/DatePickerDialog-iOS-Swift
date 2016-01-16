import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textField2: UITextField!

    private var date1: NSDate!
    private var date2: NSDate!

    /* Overrides */
    override func viewDidLoad() {
        date1 = NSDate()
        date2 = NSDate()
        super.viewDidLoad()
    }

    /* IBActions */
    @IBAction func datePickerTapped(sender: AnyObject) {
        DatePickerDialog(isRangePicker: true)
            .show(
                "im titile",
                titleUpTo: "im sencond",
                doneButtonTitle: "Done",
                cancelButtonTitle: "Cancel",
                defaultDate: date1,
                defaultDateUpTo: date2,
                datePickerMode: .Time){
                (date, dateUpTo) -> Void in
                    self.textField.text = "\(date)"
                    self.textField2.text = "\(dateUpTo)"
                    self.date1 = date
                    self.date2 = dateUpTo
            }
    }

}
