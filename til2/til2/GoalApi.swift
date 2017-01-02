//
//  GoalApi.swift
//  til2
//
//  Created by Kanchan on 29/12/16.
//  Copyright © 2016 Shyatoria. All rights reserved.
//

import UIKit

class GoalApi: NSObject {
    
    if let filePath = NSBundle.mainBundle().pathForResource("example", ofType: "json"), data = NSData(contentsOfFile: filePath)) {
        do {
            let json = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.AllowFragments)
        }
        catch {
            //Handle error
        }
    }
    
}
