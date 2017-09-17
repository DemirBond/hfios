//
//  CoronaryHeartDisease.swift
//  HeartFailure
//
//  Created by Davis Chan on 9/16/17.
//  Copyright © 2017 IgorKhomiak. All rights reserved.
//

import UIKit


// MARK: - Coronary Heart Disease

class CoronaryHeartDisease: EvaluationItem {
	
	let acuteCoronarySyndrome = AcuteCoronarySyndrome(literal: Presentation.acuteCoronarySyndrome)
	let pcicabg = PCICABG(literal: Presentation.pcicabg)
	let stableAng = StableAng(literal: Presentation.stableAng)
	let lm = EvaluationItem(literal: Presentation.lm)
	let lad = EvaluationItem(literal: Presentation.lad)
	let vesselmore50 = EvaluationItem(literal: Presentation.vesselmore50)
	let lvefInCHD = EvaluationItem(literal: Presentation.lvefInCHD)
	
	override var items: [EvaluationItem] {
		return [
			acuteCoronarySyndrome,
			pcicabg,
			stableAng,
			lm,
			lad,
			vesselmore50,
			lvefInCHD
		]
	}
}


// MARK: - Coronary Heart Disease -> Acute Coronary Syndrome

class AcuteCoronarySyndrome: EvaluationItem {
	
	let moreAnginaIn24Hours = EvaluationItem(literal: Presentation.moreAnginaIn24Hours)
	let anginaMore20min = EvaluationItem(literal: Presentation.anginaMore20min)
	let asaUseInPast1Week = EvaluationItem(literal: Presentation.ASAUseInPast1Week)
	let postiveTropIorT = EvaluationItem(literal: Presentation.postiveTropIorT)
	let moreTwoAntanginal = EvaluationItem(literal: Presentation.moreTwoAntanginal)
	let stemi = STEMI(literal: Presentation.stemi)
	let refractoryAngina = EvaluationItem(literal: Presentation.refractoryAngina)
	let changingTropI = EvaluationItem(literal: Presentation.changingTropI)
	
	override var items: [EvaluationItem] {
		return [
			moreAnginaIn24Hours,
			anginaMore20min,
			asaUseInPast1Week,
			postiveTropIorT,
			moreTwoAntanginal,
			stemi,
			refractoryAngina,
			changingTropI
		]
	}
}


// MARK: - CVProfile -> Coronary Heart Disease -> Acute Coronary Syndrome -> STEMI

class STEMI: EvaluationItem {
	
	let anteriorSTEMI = EvaluationItem(literal: Presentation.anteriorSTEMI)
	let inferiorSTEMI = EvaluationItem(literal: Presentation.inferiorSTEMI)
	let otherSTEMI = EvaluationItem(literal: Presentation.otherSTEMI)
	
	override var items: [EvaluationItem] {
		return [
			anteriorSTEMI,
			inferiorSTEMI,
			otherSTEMI
		]
	}
}


// MARK: - CVProfile -> Coronary Heart Disease -> PCI/CABG

class PCICABG: EvaluationItem {
	
	let lastProcedureYearsAgo = EvaluationItem(literal: Presentation.lastProcedureYearsAgo)
	let bms = EvaluationItem(literal: Presentation.bms)
	let des = EvaluationItem(literal: Presentation.des)
	let cabg = CABG(literal: Presentation.cabg)
	
	override var items: [EvaluationItem] {
		return [
			lastProcedureYearsAgo,
			bms,
			des,
			cabg
		]
	}
}


// MARK: - CVProfile -> Coronary Heart Disease -> PCI/CABG -> CABG

class CABG: EvaluationItem {
	
	let autoVein = EvaluationItem(literal: Presentation.autoVein)
	let autoArtery = EvaluationItem(literal: Presentation.autoArtery)
	let nonAuto = EvaluationItem(literal: Presentation.nonAuto)
	
	override var items: [EvaluationItem] {
		return [
			autoVein,
			autoArtery,
			nonAuto
		]
	}
}


// MARK: - CVProfile -> Coronary Heart Disease -> STABLE ANG

class StableAng: EvaluationItem {
	
	let nyhaccvsClass1 = EvaluationItem(literal: Presentation.nyhaccvsClass1)
	let nyhaccvsClass2 = EvaluationItem(literal: Presentation.nyhaccvsClass2)
	let nyhaccvsClass3 = EvaluationItem(literal: Presentation.nyhaccvsClass3)
	let nyhaccvsClass4 = EvaluationItem(literal: Presentation.nyhaccvsClass4)
	
	override var items: [EvaluationItem] {
		return [
			nyhaccvsClass1,
			nyhaccvsClass2,
			nyhaccvsClass3,
			nyhaccvsClass4
		]
	}
}
