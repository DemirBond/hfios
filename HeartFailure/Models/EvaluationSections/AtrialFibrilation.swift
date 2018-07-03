//
//  AtrialFibrilation.swift
//  HeartFailure
//
//  Created by Davis Chan on 9/16/17.
//  Copyright © 2017 IgorKhomiak. All rights reserved.
//

import UIKit


// MARK: - Atrial Fibrillation

class AtrialFibrilation: EvaluationItem {
	
	let atrialFibrillationLabel = EvaluationItem(literal: Presentation.atrialFibrillationLabel)
	let ventricularRateControl = EvaluationItem(literal: Presentation.ventricularRateControl)
	let rhythmControl = EvaluationItem(literal: Presentation.rhythmControl)
	let heartRateWithActivity = EvaluationItem(literal: Presentation.heartRateWithActivity)
	
	let durationDays = EvaluationItem(literal: Presentation.durationDays)
	let symptomatic = Symptomatic(literal: Presentation.symptomatic)
	let previousTIACVA = PreviousTIACVA(literal: Presentation.previousTIACVA)
	let lastthromboembolicevent = EvaluationItem(literal: Presentation.lastthromboembolicevent)
	let thyro = EvaluationItem(literal: Presentation.thyrotoxicosis)
	
	override var items: [EvaluationItem] {
		return [
			atrialFibrillationLabel,
			rhythmControl,
			ventricularRateControl,
			heartRateWithActivity,
			symptomatic,
			durationDays,
			previousTIACVA,
			thyro
			//lastthromboembolicevent
		]
	}
}


// MARK: - Atrial Fibrillation -> Select VR Control

class PreviousTIACVA: EvaluationItem {
	let lastThrom = EvaluationItem(literal: Presentation.lastthromboembolicevent)
	
	override var items: [EvaluationItem] {
		return [
			lastThrom,
		
		]
	}
	
	
	
}


class AtrialFibrilationLabel: EvaluationItem {
	let ventricularRateControl = VentricularRateControl(literal: Presentation.ventricularRateControl)
	let rhythmControl = RhythmControl(literal: Presentation.rhythmControl)
	
	override var items: [EvaluationItem] {
		return [
			ventricularRateControl,
			rhythmControl
		]
	}
}


// MARK: - Atrial Fibrillation -> Select VR Control -> VentricularRateControl

class VentricularRateControl: EvaluationItem {
	let heartRateWithActivity = EvaluationItem(literal: Presentation.heartRateWithActivity)
	override var items: [EvaluationItem] {
		return [heartRateWithActivity]
	}
}


// MARK: - Atrial Fibrillation -> Select VR Control -> RhythmControl

class RhythmControl: EvaluationItem {
	let blnCAA = CurrentAntiarrythmicTherapy(literal: Presentation.blnCAA)
	let blnliver = EvaluationItem(literal: Presentation.blnliver)
	
	override var items: [EvaluationItem] {
		return [
			blnCAA,
			blnliver
		]
	}
}


// MARK: - Atrial Fibrillation -> Rhythm Control -> Current Antiarrythmic Therapy

class CurrentAntiarrythmicTherapy: EvaluationItem {
	
	let blnclass1AA = EvaluationItem(literal: Presentation.blnclass1AA)
	let blnclass3AA = EvaluationItem(literal: Presentation.blnclass3AA)
	
	override var items: [EvaluationItem] {
		return [
			blnclass1AA,
			blnclass3AA
		]
	}
}


// MARK: - Atrial Fibrillation -> Symptomatic

class Symptomatic: EvaluationItem {
	
	//let acutely = EvaluationItem(literal: Presentation.acutely)
	let acutely = EvaluationItem(literal: Presentation.acutely)
	
	
	override var items: [EvaluationItem] {
		return [acutely]
	}
}
