//
//  HomeViewController.swift
//  Grading Distribution
//
//  Created by Turing on 9/19/24.
//

import UIKit

class HomeViewController: UIViewController {
    
    let Myview = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
    let label = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLabel()
        animate()
    }
    
    private func setupLabel() {
            label.text = "Welcome!"
            label.textColor = .black
            label.textAlignment = .center
            
            label.font = UIFont.systemFont(ofSize: 35, weight: .thin)
        
            label.translatesAutoresizingMaskIntoConstraints = false
            
            Myview.addSubview(label)

            // Center the label within myView
            NSLayoutConstraint.activate([
                label.centerXAnchor.constraint(equalTo: Myview.centerXAnchor),
                label.centerYAnchor.constraint(equalTo: Myview.centerYAnchor)
            ])
        }
    
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        Myview.backgroundColor = UIColor(red: 0.612, green: 0.973, blue: 1.0, alpha: 1.0)
        Myview.center = view.center
        view.addSubview(Myview)
        
    }
    
    @objc func animate() {
        
        UIView.animate(withDuration: 1, animations: {
            self.Myview.transform = CGAffineTransform(scaleX: 0.5, y: 0.5) // Shrink
        }) { _ in
            UIView.animate(withDuration: 1, animations: {
                self.Myview.transform = CGAffineTransform(scaleX: 1.0, y: 1.0) // Grow back to original size
            }) { _ in
                // Recursively call the animate function to repeat the cycle
                self.animate()
            }
        }
        
    }
    

    

}
