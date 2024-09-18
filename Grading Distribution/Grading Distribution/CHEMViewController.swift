//
//  CHEMViewController.swift
//  Grading Distribution
//
//  Created by Turing on 9/17/24.
//

import UIKit

class CHEMViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBOutlet weak var HomeworkValue: UISlider!
    
    @IBOutlet weak var QuizValue: UISlider!
    
    @IBOutlet weak var Exams: UISlider!
    
    @IBOutlet weak var FinalExamValue: UISlider!
    
    
    @IBAction func HomeworkControl(_ sender: UISlider) {
        updateFinalGrade()
    }
    
    @IBAction func QuizControl(_ sender: UISlider) {
        updateFinalGrade()
    }
    
    @IBAction func ExamsControl(_ sender: UISlider) {
        updateFinalGrade()
    }
    
    @IBAction func FinalExamControl(_ sender: UISlider) {
        updateFinalGrade()
    }
    
    
    @IBOutlet weak var FinalValue: UILabel!
    
    
    private func updateFinalGrade() {
            // Assuming each slider is out of 100 for simplicity
            let homework = HomeworkValue.value
            let worksheets = QuizValue.value
            let exams = Exams.value
            let finalExam = FinalExamValue.value
            
            let average = (homework + worksheets + exams + finalExam)
    
            if average >= 95 {
                FinalValue.text = "+A"
            }
            else if average >= 90 {
                FinalValue.text = "A"
            }
            else if average >= 85 {
                FinalValue.text = "+B"
            }
            else if average >= 80 {
                FinalValue.text = "B"
            }
            else if average >= 75 {
                FinalValue.text = "+C"
            }
            else if average >= 70{
                FinalValue.text = "C"
            }
            else if average >= 65 {
                FinalValue.text = "+D"
            }
            else if average >= 60{
                FinalValue.text = "D"
            }
            else if average < 60{
                FinalValue.text = "F"
            }
        
        }

}
