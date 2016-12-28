//
//  Goal.swift
//  til2
//
//  Created by Kanchan on 28/12/16.
//  Copyright © 2016 Shyatoria. All rights reserved.
//

import UIKit

struct Goal {

    var imageURl : String
    var title : String
    var author: String
    var todo: Int
    var done: Int
    
    init(json : JSON) {
        
        validity = json["coupon_validity"].stringValue
        isApplicable = json["is_applicable"].boolValue
        method = json["coupon_method"].stringValue
        value = json["coupon_value"].stringValue
        code = json["coupon_code"].stringValue
        description = json["coupon_description"].description
        validTill = json["valid_till"].stringValue
        shortDescription = json["coupon_short_description"].stringValue
        longDescription = json["coupon_long_description"].stringValue
        
    }
}


