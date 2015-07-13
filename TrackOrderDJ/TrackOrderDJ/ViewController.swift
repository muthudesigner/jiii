//
//  ViewController.swift
//  TrackOrderDJ
//
//  Created by BLT0003-MACMI on 7/2/15.
//  Copyright (c) 2015 Blisslogix. All rights reserved.
//

import UIKit
//utktukukjtyiktyik
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var url : String = "http://182.71.230.164:99/ordermanagement/index.php/services/registeration?firstname=Divya&lastname=D&username=thira.ammu@gmail.com&password=1243&devices_id=345&devices_name=iphone&created_by=DJa"
        var request : NSMutableURLRequest = NSMutableURLRequest()
        request.URL = NSURL(string: url)
        request.HTTPMethod = "GET"
        
        NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue(), completionHandler:{ (response:NSURLResponse!, data: NSData!, error: NSError!) -> Void in
            var error: AutoreleasingUnsafeMutablePointer<NSError?> = nil
            let jsonResult: NSDictionary! = NSJSONSerialization.JSONObjectWithData(data, options:NSJSONReadingOptions.MutableContainers, error: error) as? NSDictionary
            
            if (jsonResult != nil) {
                println("sucess")
                            }
            else {
               
                println(error)
            }
            
            
        })
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func login(sender: AnyObject) {
    
    
    
        var url : String = "http://182.71.230.164:99/ordermanagement/index.php/services/user_login?username=thira.ammu@gmail.com&password=1243"
        var request : NSMutableURLRequest = NSMutableURLRequest()
        request.URL = NSURL(string: url)
        request.HTTPMethod = "GET"
        
        NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue(), completionHandler:{ (response:NSURLResponse!, data: NSData!, error: NSError!) -> Void in
            var error: AutoreleasingUnsafeMutablePointer<NSError?> = nil
            let jsonResult: NSDictionary! = NSJSONSerialization.JSONObjectWithData(data, options:NSJSONReadingOptions.MutableContainers, error: error) as? NSDictionary
            
            if (jsonResult != nil) {
                println("sucess")
                println(jsonResult)
            }
            else {
                
                println(error)
            }
            
            
        })

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

