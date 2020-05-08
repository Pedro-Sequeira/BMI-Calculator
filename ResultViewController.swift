import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmi: BMI?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = String(format: "%.1f", bmi?.value ?? 0)
        adviceLabel.text = bmi?.advice
        view.backgroundColor = bmi?.color
    }

    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
