//
//  HubViewController.swift
//  Rockette
//
//  Created by Harsh Bindra on 2016-11-13.
//
//

import UIKit

class HubViewController: UIViewController {

    @IBOutlet weak var questions: UIButton!
    @IBOutlet weak var settings: UIButton!
    @IBOutlet weak var reflections: UIButton!
    @IBOutlet weak var logOut: UIButton!
    
    @IBOutlet weak var roundIcon: RoundView!
    
    @IBOutlet weak var cornerCircle: RoundView!
    @IBOutlet weak var buttonsContainer: UIStackView!
    
    @IBOutlet weak var questionSVContainer: UIView!
    @IBOutlet weak var settingsSVContainer: UIView!
    @IBOutlet weak var reflectionsSVContainer: UIView!
    @IBOutlet weak var logOutSVContainer: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        addBordersToButtons()
       self.view.insertSubview(cornerCircle, aboveSubview: buttonsContainer)
        settingsSVContainer.addBorder(toEdges: [.left, .bottom], colour: UIColor.black, thickness: 2.0)
        questionSVContainer.addBorder(toEdges: [.right, .bottom], colour: UIColor.black, thickness: 2.0)
        reflectionsSVContainer.addBorder(toEdges: [.right, .top], colour: UIColor.black, thickness: 2.0)
        logOutSVContainer.addBorder(toEdges: [.left, .top], colour: UIColor.black, thickness: 2.0)
        
//        setRoundIconToCenterOfButtonContainer()
//        roundIcon.heightAnchor.constraint(equalToConstant: 150.0).isActive = true
//        roundIcon.widthAnchor.constraint(equalToConstant: 150.0).isActive = true
        
        roundIcon.add(image: UIImage(named: "grey-background")!)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setRoundIconToCenterOfButtonContainer() {
        roundIcon.centerXAnchor.constraint(equalTo: buttonsContainer.centerXAnchor).isActive = true
        roundIcon.centerYAnchor.constraint(equalTo: buttonsContainer.centerYAnchor).isActive = true
    }
    
    func addBordersToButtons(){
//        settings.addBorder(toEdges: [.left, .bottom], colour: UIColor.black, thickness: 1)
//        questions.addBorder(toEdges: [.right, .bottom], colour: UIColor.black, thickness: 1)
//        logOut.addBorder(toEdges: [.left, .top], colour: UIColor.black, thickness: 1)
//        reflections.addBorder(toEdges: [.right, .top], colour: UIColor.black, thickness: 1)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
