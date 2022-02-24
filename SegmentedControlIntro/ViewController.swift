//
//  ViewController.swift
//  SegmentedControlIntro
//
//  Created by Lin LaMonte on 2/24/22.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var helloLabel: UILabel!
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //to change color of text, titleTextAttributes(2) can have different names, segmentControl is the linked segmented control, colors (purple & teal) can change
        let titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.purple]
        segmentControl
            .setTitleTextAttributes(titleTextAttributes, for:.normal)
        
        let titleTextAttributes2 = [NSAttributedString.Key.foregroundColor: UIColor.systemTeal]
        segmentControl
            .setTitleTextAttributes(titleTextAttributes2, for:.selected)
        
    }

    @IBAction func segmentController(_ sender: Any) {
        
        switch segmentControl.selectedSegmentIndex
        {
            
        case 0:
            helloLabel.text = "Hello!"
        case 1:
            helloLabel.text = "Bonjour!"
        case 2:
            helloLabel.text = "Guten Tag!"
        default:
            helloLabel.text = "Hello!"
            
        }

        
    }
    
}

