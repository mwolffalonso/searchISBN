//
//  ViewController.swift
//  OpenLibraryTest
//
//  Created by user on 8/28/16.
//  Copyright © 2016 RyM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var isbn: UITextField!

    @IBOutlet weak var output: UITextView!
    
    @IBAction func searching(sender: AnyObject) {
        print(isbn.text!)
        let urls = "https://openlibrary.org/api/books?jscmd=data&format=json&bibkeys=ISBN:"+isbn.text!
        let url = NSURL(string : urls)
        let datos:NSData? = NSData(contentsOfURL: url!)
        let texto = NSString(data: datos!, encoding: NSUTF8StringEncoding)
        output.text=texto!.capitalizedString
        print(texto)
        isbn.endEditing(true)
    }


}

