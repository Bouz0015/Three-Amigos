//
//  MascotViewController.swift
//  Three Amigos
//
//  Created by Aymane on 9/26/17.
//  Copyright © 2017 Algonquin College. All rights reserved.
//

import UIKit

class MascotViewController: UIViewController {

    @IBOutlet weak var mascotimage: UIImageView!
    @IBOutlet weak var mascotname: UILabel!
    var names: [String] = ["Android", "Duke", "Tux"]
    var images: [UIImage] = [
        UIImage(named: "android.png")!,
        UIImage(named: "duke.png")!,
        UIImage(named: "tux.png")!
    ]
    var index: Int = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        mascotimage.image = images[index]
        mascotname.text = names[index]
    }

    @IBAction func handleNext(_ sender: Any) {
        index = index + 1
        if ( index >= names.count ) {
            index = 0
        }
        mascotimage.image = images[index]
        mascotname.text = names[index]
    }
        @IBAction func handlePrevious(_ sender: Any) {
            index = index - 1
            if (index < 0){
                index = names.count - 1
            }
            mascotimage.image = images[index]
            mascotname.text = names[index]
        }
}
