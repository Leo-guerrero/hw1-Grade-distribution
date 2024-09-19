//
//  MathViewController.swift
//  Grading Distribution
//
//  Created by Turing on 9/17/24.
//

import UIKit

class MathViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    
    @IBOutlet weak var HomeworkValue: UISlider!
    
    @IBOutlet weak var WorksheetsValue: UISlider!
    
    @IBOutlet weak var ExamsValue: UISlider!
    
    @IBOutlet weak var FinalExamValue: UISlider!
    
    
    @IBAction func HomeworkControl(_ sender: UISlider) {
        
        updateFinalGrade()
    }
    
    @IBAction func WorksheetsControl(_ sender: UISlider) {
        
        updateFinalGrade()
    }
    
    @IBAction func ExamsControl(_ sender: UISlider) {
        
        updateFinalGrade()
    }
    
    @IBAction func FinalExamControl(_ sender: UISlider) {
    
        updateFinalGrade()
    }
    
    
    
    @IBOutlet weak var FinalGrade: UILabel!
    
    private func updateFinalGrade() {
            
            let homework = HomeworkValue.value
            let worksheets = WorksheetsValue.value
            let exams = ExamsValue.value
            let finalExam = FinalExamValue.value
            
            let average = (homework + worksheets + exams + finalExam)
    
            if average >= 95 {
                FinalGrade.text = "+A"
            }
            else if average >= 90 {
                FinalGrade.text = "A"
            }
            else if average >= 85 {
                FinalGrade.text = "+B"
            }
            else if average >= 80 {
                FinalGrade.text = "B"
            }
            else if average >= 75 {
                FinalGrade.text = "+C"
            }
            else if average >= 70{
                FinalGrade.text = "C"
            }
            else if average >= 65 {
                FinalGrade.text = "+D"
            }
            else if average >= 60{
                FinalGrade.text = "D"
            }
            else if average < 60{
                FinalGrade.text = "F"
            }
        
        }
    
    
}
