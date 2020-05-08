import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBmi(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        let bmiAdvice: String
        let bmiColor: UIColor
        
        switch bmiValue {
        case ..<18.5:
            bmiAdvice = "Eat more pies!"
            bmiColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        case 18.5...24.9:
            bmiAdvice = "Fit as a fiddle!"
            bmiColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        default:
            bmiAdvice = "Eat less pies!"
            bmiColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        }
        
        bmi = BMI(value: bmiValue, advice: bmiAdvice, color: bmiColor)
    }
    
    func getBmi() -> BMI {
        return bmi ?? BMI(value: 0.0, advice: "No advice", color: .white)
    }
}
