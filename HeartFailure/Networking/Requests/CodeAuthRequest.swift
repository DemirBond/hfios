//
//  CodeAuthRequest.swift
//  HeartFailure
//
//  Created by Davis Chan on 9/29/17.
//  Copyright © 2017 IgorKhomiak. All rights reserved.
//

import Foundation


struct CodeAuthRequest {
	
	var email: String
	var registrationCode: String
	
	func toDictionary() -> Dictionary<String, AnyObject> {
		return ["Username": email as AnyObject, "RegistrationCode": registrationCode as AnyObject]
	}
}
