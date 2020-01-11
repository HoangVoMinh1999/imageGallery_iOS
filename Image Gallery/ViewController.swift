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
    
    var listImage=["image1","image2","image3","image4"]
    var index=0
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image=UIImage(named: listImage[index])
        // Do any additional setup after loading the view.
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
        let alert:UIAlertController = UIAlertController(title: "Art Gallery", message: "Hello", preferredStyle: UIAlertController.Style.alert)
        let buttonOK:UIAlertAction=UIAlertAction(title: "OK", style: UIAlertAction.Style.destructive, handler: nil)
        let buttonCancel:UIAlertAction=UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(buttonOK)
        alert.addAction(buttonCancel)
        present(alert, animated: true, completion: nil)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        // Alert
        let alert_1:UIAlertController=UIAlertController(title: "Welcome to Image Gallery", message: "Please enter your name", preferredStyle: UIAlertController.Style.alert)
        // Alert text field
        alert_1.addTextField(configurationHandler: nil)
        // Alert action
        let button_1:UIAlertAction=UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert_1.addAction(button_1)
        // Present
        present(alert_1, animated: true, completion: nil)
    }
}

