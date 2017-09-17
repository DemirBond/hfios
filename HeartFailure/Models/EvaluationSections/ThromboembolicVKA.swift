//
//  ThromboembolicVKA.swift
//  HeartFailure
//
//  Created by Davis Chan on 9/16/17.
//  Copyright © 2017 IgorKhomiak. All rights reserved.
//

import UIKit


// MARK: - Thromboembolism / VKA

class ThromboembolicVKA: EvaluationItem {
	
	let deepVenousThrombosis = EvaluationItem(literal: Presentation.deepVenousThrombosis)
	let pulmonaryEmbolism = EvaluationItem(literal: Presentation.pulmonaryEmbolism)
	let dvtpeDiagnosisPrevention = DvtpeDiagnosisPrevention(literal: Presentation.dvtpeDiagnosisPrevention)
	let acuteCVA = AcuteCVA(literal: Presentation.acuteCVA)
	
	override var items: [EvaluationItem] {
		return [
			deepVenousThrombosis,
			pulmonaryEmbolism,
			dvtpeDiagnosisPrevention,
			acuteCVA
		]
	}
}


// MARK: - Thromboembolism / VKA -> DVT/PE Diagnosis/Prevention

class DvtpeDiagnosisPrevention: EvaluationItem {
	
	let blngeneral = EvaluationItem(literal: Presentation.blngeneral)
	let blnurology = EvaluationItem(literal: Presentation.blnurology)
	let blnknee = EvaluationItem(literal: Presentation.blnknee)
	let blnhip = EvaluationItem(literal: Presentation.blnhip)
	let blnHPS = EvaluationItem(literal: Presentation.blnHPS)
	let blncancer = EvaluationItem(literal: Presentation.blncancer)
	let blnspinal = EvaluationItem(literal: Presentation.blnspinal)
	let blnacute = MedicalIllness(literal: Presentation.blnacute)
	
	override var items: [EvaluationItem] {
		return [
			blngeneral,
			blnurology,
			blnknee,
			blnhip,
			blnHPS,
			blncancer,
			blnspinal,
			blnacute
		]
	}
}


// MARK: - Thromboembolism / VKA -> DVT/PE Diagnosis/Prevention -> Medical Illness

class MedicalIllness: EvaluationItem {
	
	let blnswelling = EvaluationItem(literal: Presentation.blnswelling)
	let blnactivecancer = EvaluationItem(literal: Presentation.blnactivecancer)
	let blnPVTE = EvaluationItem(literal: Presentation.blnPVTE)
	let blnRF = EvaluationItem(literal: Presentation.blnRF)
	let blnthrombo = EvaluationItem(literal: Presentation.blnthrombo)
	let blnrecent = EvaluationItem(literal: Presentation.blnrecent)
	let blnreduced = EvaluationItem(literal: Presentation.blnreduced)
	let blnhormone = EvaluationItem(literal: Presentation.blnhormone)
	let blninfection = EvaluationItem(literal: Presentation.blninfection)
	
	override var items: [EvaluationItem] {
		return [
			blnswelling,
			blnactivecancer,
			//blnPVTE,
			blnRF,
			blnthrombo,
			blnrecent,
			blnreduced,
			blnhormone,
			blninfection
		]
	}
}


// MARK: - Thromboembolism / VKA -> Acute CVA

class AcuteCVA: EvaluationItem {
	
	let nihss = EvaluationItem(literal: Presentation.nihss)
	let unilateralWeakness = EvaluationItem(literal: Presentation.unilateralWeakness)
	let speechDisturbance = EvaluationItem(literal: Presentation.speechDisturbance)
	let durationOfSymptoms = EvaluationItem(literal: Presentation.durationOfSymptoms)
	let preHospitalCare = EvaluationItem(literal: Presentation.preHospitalCare)
	
	override var items: [EvaluationItem] {
		return [
			nihss,
			unilateralWeakness,
			speechDisturbance,
			durationOfSymptoms,
			preHospitalCare
		]
	}
}
