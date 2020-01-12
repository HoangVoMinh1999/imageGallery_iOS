//
//  ViewController.swift
//  Image Gallery
//
//  Created by Vo Minh Hoang on 1/11/20.
//  Copyright © 2020 Vo Minh Hoang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var colorSlider: UISlider!
    
    var listImage=["image1","image2","image3","image4"]
    var index=0
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image=UIImage(named: listImage[index])
        nameLabel.text=""
        //---Setting slider
        colorSlider.maximumValue=100
        colorSlider.minimumValue=0
        colorSlider.maximumTrackTintColor=UIColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
        colorSlider.minimumTrackTintColor=UIColor(red: 0.0, green: 0.0, blue: 1.0, alpha: 1.0)
    }
    @IBAction func backButton(_ sender: Any) {
        if (index==0){
            index=listImage.count-1;
        }
        else{
            index=index-1;
        }
        imageView.image=UIImage(named: listImage[index])
    }
    @IBAction func nextButton(_ sender: Any) {
        if (index==listImage.count-1){
            index=0
        }
        else{
            index+=1
        }
        imageView.image=UIImage(named: listImage[index])
    }
    
    @IBAction func notiButton(_ sender: Any) {
        let alert:UIAlertController = UIAlertController(title: "Art Gallery", message: "Hello", preferredStyle: UIAlertController.Style.actionSheet)
        let buttonOK:UIAlertAction=UIAlertAction(title: "OK", style: UIAlertAction.Style.destructive, handler: nil)
        let buttonCancel:UIAlertAction=UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(buttonOK)
        alert.addAction(buttonCancel)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func colorSldAction(_ sender: UISlider) {
        
        
    }
    override func viewDidAppear(_ animated: Bool) {
        // Alert
        let alert_1:UIAlertController=UIAlertController(title: "Welcome to Image Gallery", message: "Please enter your name", preferredStyle: UIAlertController.Style.alert)
        // Alert text field
        alert_1.addTextField { (nameTextField) in
            nameTextField.placeholder="Your name"
        }
        // Alert action
        let button_1:UIAlertAction=UIAlertAction(title: "Confirm", style: .default) { (button_1) in
            let name:String=alert_1.textFields![0].text!
            self.nameLabel.text = "Hello: \(name)"
        }
        alert_1.addAction(button_1)
        // Present
        present(alert_1, animated: true, completion: nil)
    }
}

