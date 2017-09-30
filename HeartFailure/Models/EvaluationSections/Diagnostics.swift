//
//  Diagnostics.swift
//  CVDEvaluator
//
//  Created by bogdankosh on 2/14/17.
//  Copyright © 2017 IgorKhomiak. All rights reserved.
//

import Foundation


// MARK: - Diagnostics

class Diagnostics: EvaluationItem {
	
	let ekg = EKG(literal: Presentation.ekg)
	let stressTesting = StressTesting(literal: Presentation.stressTesting)
	let echocardiography = Echocardiography(literal: Presentation.echocardiography)
	let rhc = RHC(literal: Presentation.rhc)

	override var items: [EvaluationItem] {
		return [
			ekg,
			stressTesting,
			echocardiography,
			rhc,
		]
	}
}


// MARK: - Diagnostics -> EKG

class EKG: EvaluationItem {
	
	let NSRInEKG = EvaluationItem(literal: Presentation.nsrInEKG)
	let svt = EvaluationItem(literal: Presentation.svt)
	let atrialFibrillationInEKG = EvaluationItem(literal: Presentation.atrialFibrillationInEKG)
	let atrialFlutter = AtrialFlutter(literal: Presentation.atrialFlutter)
	let prDuration  = EvaluationItem(literal: Presentation.prDuration)
	let qrsDuration = EvaluationItem(literal: Presentation.qrsDuration)
	let qtcDuration = EvaluationItem(literal: Presentation.qtcDuration)
	let nonspecificSTAbnormality = EvaluationItem(literal: Presentation.nonspecificSTAbnormality)
	let lvh = EvaluationItem(literal: Presentation.lvh)
	let lowVoltageQRS = EvaluationItem(literal: Presentation.lowVoltageQRS)
	let abnormalQWaves = EvaluationItem(literal: Presentation.abnormalQWaves)
	let lbbb = EvaluationItem(literal: Presentation.lbbb)
	let bifascicular = EvaluationItem(literal: Presentation.bifascicular)
	let wpw = EvaluationItem(literal: Presentation.wpw)
	
	override var items: [EvaluationItem] {
		return [
			NSRInEKG,
			svt,
			atrialFibrillationInEKG,
			atrialFlutter,
			prDuration,
			qrsDuration,
			qtcDuration,
			nonspecificSTAbnormality,
			lvh,
			lowVoltageQRS,
			abnormalQWaves,
			lbbb,
			bifascicular,
			wpw,
		]
	}
}


// MARK: - Diagnostics -> EKG -> AtrialFlutter

class AtrialFlutter: EvaluationItem {
	
	let typicalAF = EvaluationItem(literal: Presentation.typicalAF)
	let atypicalAF = EvaluationItem(literal: Presentation.atypicalAF)
	
	override var items: [EvaluationItem] {
		return [typicalAF, atypicalAF]
	}
}


// MARK: - Diagnostics -> EKG -> SecondDegreeAVBlock

class SecondDegreeAVBlock: EvaluationItem {
	
	let type1 = EvaluationItem(literal: Presentation.type1)
	let type2 = EvaluationItem(literal: Presentation.type2)
	
	override var items: [EvaluationItem] {
		return [type1, type2]
	}
}


// MARK: - Diagnostics -> Stress Testing

class StressTesting: EvaluationItem {
	
	let dukeTreadmillScore = EvaluationItem(literal: Presentation.dukeTreadmillScore)
	let serumStressSummedScore = EvaluationItem(literal: Presentation.serumStressSummedScore)
	let stressDifferenceScore = EvaluationItem(literal: Presentation.stressDifferenceScore)
	let percentIschemicMyocardiumonMPS = EvaluationItem(literal: Presentation.percentIschemicMyocardiumonMPS)
	let tidOrSignificantDysfunction = EvaluationItem(literal: Presentation.tidOrSignificantDysfunction)
	let exTimeMin = EvaluationItem(literal: Presentation.exTimeMin)
	let maxSTMm = EvaluationItem(literal: Presentation.maxSTMm)
	let anginaIndex = AnginaIndex(literal: Presentation.anginaIndex)
	let stElevation = EvaluationItem(literal: Presentation.stElevation)
	let abnormalBPResponse = EvaluationItem(literal: Presentation.abnormalBPResponse)
	let ventricularTachycardia = EvaluationItem(literal: Presentation.ventricularTachycardia)
	let prolongSTDepression = EvaluationItem(literal: Presentation.prolongSTDepression)
	let fixedPerfusionDefects = FixedPerfusionDefects(literal: Presentation.fixedPerfusionDefects)
	let dseIschemicThreshold = EvaluationItem(literal: Presentation.dseIschemicThreshold)
	let dseOrStressMRI = EvaluationItem(literal: Presentation.dseOrStressMRI)
	let artifactualUninterpretableImages = EvaluationItem(literal: Presentation.artifactualUninterpretableImages)
	
	override var items: [EvaluationItem] {
		return [
			dukeTreadmillScore,
			serumStressSummedScore,
			stressDifferenceScore,
			percentIschemicMyocardiumonMPS,
			tidOrSignificantDysfunction,
			exTimeMin,
			maxSTMm,
			anginaIndex,
			stElevation,
			abnormalBPResponse,
			ventricularTachycardia,
			prolongSTDepression,
			fixedPerfusionDefects,
			dseIschemicThreshold,
			dseOrStressMRI,
			artifactualUninterpretableImages
		]
	}
}


// MARK: - Diagnostics -> Stress Testing -> AnginaIndex

class AnginaIndex: EvaluationItem {
	
	let noAnginaDuringExercise = EvaluationItem(literal: Presentation.noAnginaDuringExercise)
	let nonLimitingAngina = EvaluationItem(literal: Presentation.nonLimitingAngina)
	let exerciseLimitingAngina = EvaluationItem(literal: Presentation.exerciseLimitingAngina)
	
	override var items: [EvaluationItem] {
		return [
			noAnginaDuringExercise,
			nonLimitingAngina,
			exerciseLimitingAngina
		]
	}
}


// MARK: - Diagnostics -> Stress Testing -> Fixed Perfusion Defects

class FixedPerfusionDefects: EvaluationItem {
	
	let viabilityPresent = EvaluationItem(literal: Presentation.viabilityPresent)
	
	override var items: [EvaluationItem] {
		return [viabilityPresent]
	}
}


// MARK: - Diagnostics -> Echocardiography

class Echocardiography: EvaluationItem {
	
	let pericardialEffusion = EvaluationItem(literal: Presentation.pericardialEffusion)
	let rwma = EvaluationItem(literal: Presentation.rwma)
	let enlargedLAOrLVH = EvaluationItem(literal: Presentation.enlargedLAOrLVH)
	let ea05AndDTMore280ms = EvaluationItem(literal: Presentation.ea05AndDTMore280ms)
	let gradeMore2DiastolicDysfunction = EvaluationItem(literal: Presentation.gradeMore2DiastolicDysfunction)
	let respiratoryIVSShift = EvaluationItem(literal: Presentation.respiratoryIVSShift)
	let mitralEVariation = EvaluationItem(literal: Presentation.mitralEVariation)
	let hepaticVeinExpDiastolicReversal = EvaluationItem(literal: Presentation.hepaticVeinExpDiastolicReversal)
	let enlargedRA = EvaluationItem(literal: Presentation.enlargedRA)
	let enlargedRV = EvaluationItem(literal: Presentation.enlargedRV)
	let midsystolicNotch = EvaluationItem(literal: Presentation.midsystolicNotch)
	let lvLaterealAnnulusEE = EvaluationItem(literal: Presentation.lvLaterealAnnulusEE)
	let lvefInEchocardiography = EvaluationItem(literal: Presentation.lvefInEchocardiography)
	let trjVelocityMsec = EvaluationItem(literal: Presentation.trjVelocityMsec)
	
	override var items: [EvaluationItem] {
		return [
			pericardialEffusion,
			rwma,
			enlargedLAOrLVH,
			ea05AndDTMore280ms,
			gradeMore2DiastolicDysfunction,
			respiratoryIVSShift,
			mitralEVariation,
			hepaticVeinExpDiastolicReversal,
			enlargedRA,
			enlargedRV,
			midsystolicNotch,
			lvLaterealAnnulusEE,
			lvefInEchocardiography,
			trjVelocityMsec
		]
	}
}


// MARK: - Diagnostics -> High Resolution CT

class HRCT: EvaluationItem {
	
	let ground = EvaluationItem(literal: Presentation.ground)
	let septal = EvaluationItem(literal: Presentation.septal)
	let reticular = EvaluationItem(literal: Presentation.reticular)
	let nodular = EvaluationItem(literal: Presentation.nodular)
	let consolidate = EvaluationItem(literal: Presentation.consolidate)
	let honey = EvaluationItem(literal: Presentation.honey)
	let bronch = EvaluationItem(literal: Presentation.bronch)
	let medias = EvaluationItem(literal: Presentation.medias)
	let pleuralthick = EvaluationItem(literal: Presentation.pleuralthick)
	
	override var items: [EvaluationItem] {
		return [
			ground,
			septal,
			reticular,
			nodular,
			consolidate,
			honey,
			bronch,
			medias,
			pleuralthick
		]
	}
}


// MARK: - Diagnostics -> RHC

class RHC: EvaluationItem {
	
}
