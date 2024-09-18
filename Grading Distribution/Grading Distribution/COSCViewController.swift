//
//  COSCViewController.swift
//  Grading Distribution
//
//  Created by Turing on 9/17/24.
//

import UIKit

class COSCViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBOutlet weak var HomeworkValue: UISlider!
    
    @IBOutlet weak var PrototypeValue: UISlider!
    
    @IBOutlet weak var ImplValue: UISlider!
    
    @IBOutlet weak var PresentationValue: UISlider!
    
    @IBOutlet weak var ParticipationValue: UISlider!
    
    
    @IBAction func HomeworkControl(_ sender: UISlider) {
        updateFinalGrade()
    }
    
    @IBAction func PrototypeControl(_ sender: UISlider) {
        updateFinalGrade()
    }
    
    @IBAction func ImplControl(_ sender: UISlider) {
        updateFinalGrade()
    }
    
    @IBAction func PresControl(_ sender: UISlider) {
        updateFinalGrade()
    }
    
    @IBAction func PartiControl(_ sender: UISlider) {
        updateFinalGrade()
    }
    
    @IBOutlet weak var FinalGrade: UILabel!
    
    
    private func updateFinalGrade() {
            // Assuming each slider is out of 100 for simplicity
            let homework = HomeworkValue.value
            let proto = PrototypeValue.value
            let Impl = ImplValue.value
            let pres = PresentationValue.value
            let parti = ParticipationValue.value
            
            let average = (homework + proto + Impl + pres + parti)
    
            if average >= 90 {
                FinalGrade.text = "A"
            }
            else if average >= 80 {
                FinalGrade.text = "B"
            }
            else if average >= 70{
                FinalGrade.text = "C"
            }
            else if average >= 60{
                FinalGrade.text = "D"
            }
            else if average < 60{
                FinalGrade.text = "F"
            }
        
        }

    

}
