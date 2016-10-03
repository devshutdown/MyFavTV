//
//  DetailViewController.swift
//  MyFavTV
//
//  Created by Aaron Goodin on 9/27/16.
//  Copyright © 2016 Rock Valley College. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

   // @IBOutlet weak var detailDescriptionLabel: UILabel!

    @IBOutlet weak var tvImageView: UIImageView!

    var detailItem: AnyObject? {
        didSet {
            // Update the view.
           // self.configureView()
        }
    }
    var tvName: String?{
        didSet{
            
        }
    }
    
    var tvURL: NSString?{
        didSet{
            //self.configureView()
        }
    }
    
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail: AnyObject = self.detailItem {
            tvImageView.image = UIImage(named: tvURL! as String)        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("TV URL: \(tvURL)")
        print("TV Name: \(tvName)")
        if tvName == nil{
            tvImageView.image = UIImage(named: "Main.png")
        }
        title = tvName
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

