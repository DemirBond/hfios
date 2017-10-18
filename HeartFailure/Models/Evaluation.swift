//
//  Evaluation.swift
//  CVDEvaluator
//
//  Created by IgorKhomiak on 2/3/17.
//  Copyright © 2017 IgorKhomiak. All rights reserved.
//

import UIKit

enum EvaluationStatus: Int {
	case initialized
	case bioViewed
	case bioCompleted
	case riskCompleted
	case diagnosticCompleted
	case therapieCompleted
	case evaluated
	
}

class Evaluation: EvaluationItem {
	
	var evaluationUUID: String!
	var dateCreated: String?
	var evaluationStatus: EvaluationStatus = EvaluationStatus.initialized {
		didSet {
			//print("Did change status \(evaluationStatus)")
		}
	}
	var isBioViewed: Bool = false {
		didSet {
			completeScreen()
		}
	}
	var isBioCompleted: Bool = false {
		didSet {
			completeScreen()
		}
	}
	
	var isSaved: Bool = false

	override var itemDict: Dictionary<String, Any> {
		var dict = super.itemDict
		
		dict["dateCreated"] = dateCreated
		dict["uuid"] = evaluationUUID
		dict["evaluationStatus"] = evaluationStatus.rawValue
		
		return dict
	}
	
	
	func completeScreen() {
		
		if diagnostics.isFilled && (diagnostics.form.status == .viewed || diagnostics.form.status == .valued) {
			evaluationStatus = .diagnosticCompleted
		} else if riskFactors.isFilled && (riskFactors.form.status == .viewed || riskFactors.form.status == .valued) {
			evaluationStatus = .riskCompleted
		} else if isBioViewed || isBioCompleted {
			evaluationStatus = .bioViewed
			if isBioCompleted {
				evaluationStatus = .bioCompleted
			}
		} else {
			evaluationStatus = .initialized
		}
	}
	

	let bio = BioPersonal(literal: Presentation.bio)
	let heartFailure = HeartFailure(literal: Presentation.heartFailure)
	let coronaryHeartDisease = CoronaryHeartDisease(literal: Presentation.coronaryHeartDisease)
	let atrialFibrillation = AtrialFibrilation(literal: Presentation.atrialFibrillation)
	let thromboembolicVKA = ThromboembolicVKA(literal: Presentation.thromboembolicVKA)
	let bradyarrthymiaSyncope = BradyarrthymiaSyncope(literal: Presentation.bradyarrthymiaSyncope)
	let ventricularTachyarrthymias = VentricularTachyarrthymias(literal: Presentation.ventricularTachyarrthymias)
	let riskFactors = MajorCVRisks(literal: Presentation.riskFactors)
	let laboratories = Laboratories(literal: Presentation.laboratories)
	let diagnostics = Diagnostics(literal: Presentation.diagnostics)
	let heartSpecialistManagement = HeartSpecialistManagement(literal: Presentation.heartSpecialistManagement)
	let outputInMain = Output(literal: Presentation.outputInMain)
	
	override var items: [EvaluationItem] {
		return [
			bio,
			heartFailure,
			coronaryHeartDisease,
			atrialFibrillation,
			thromboembolicVKA,
			bradyarrthymiaSyncope,
			ventricularTachyarrthymias,
			riskFactors,
			laboratories,
			diagnostics
		]
	}
	
	override var storedItems: [EvaluationItem] {
		return [
			heartSpecialistManagement
		]
	}
	
	
	init() {
		super.init()
		
		//self.evaluationUUID = UUID().uuidString.lowercased()
		let date = Date()
		self.identifier = "evaluation"

		self.dateCreated = DataManager.manager.formatter.string(from: date)
		
		setupEvaluation(evaluationItem: self)
	}
	
	
	convenience init(with dict: Dictionary<String, Any>) {
		self.init()
		
		if let uuid = dict["uuid"] as? String {
			self.evaluationUUID = uuid
		}
		if let date = dict["dateCreated"] as? String {
			self.dateCreated = date
		}
		if let statusValue = dict["evaluationStatus"] as? Int, let status = EvaluationStatus(rawValue: statusValue) {
			self.evaluationStatus = status
			if self.evaluationStatus.rawValue == 1 {
				isBioViewed = true
			}
			else if self.evaluationStatus.rawValue > 1  {
				isBioCompleted = true
			}
		}
		applyForItem(dict: dict)
	}
	
	
	func applyToEvaluationItems(id: String, value: Any) {
		for item in items {
			item.applyToSuccessor(id: id, value: value)
		}
		
		for item in storedItems {
			item.applyToSuccessor(id: id, value: value)
		}
	}
	
}
