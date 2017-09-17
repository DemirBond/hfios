//
//  HeartFailure.swift
//  HeartFailure
//
//  Created by Davis Chan on 9/16/17.
//  Copyright © 2017 IgorKhomiak. All rights reserved.
//

import UIKit


class HeartFailure: EvaluationItem {
	
	let history = History(literal: Presentation.history)
	let etiology = Etiology(literal: Presentation.etiology)
	let clinical = Clinical(literal: Presentation.clinical)
	let ahastage = AHAStage(literal: Presentation.ahastage)
	let hometherapeutics = Hometherapeutics(literal: Presentation.hometherapeutics)
	let acutely = Acutely(literal: Presentation.acutely)
	let inhospitaltherapies = InHospitalTherapies(literal: Presentation.inhospitaltherapies)
	let discharge = Discharge(literal: Presentation.discharge)
	
	override var items: [EvaluationItem] {
		return [
			history,
			etiology,
			clinical,
			ahastage,
			hometherapeutics,
			acutely,
			inhospitaltherapies,
			discharge
		]
	}
}


class History : EvaluationItem {
	
	let newonset = EvaluationItem(literal: Presentation.newOnsetHF)
	let chronicHF = EvaluationItem(literal: Presentation.chronicHF)
	let hfdiagnosis = EvaluationItem(literal: Presentation.hfDiagnosisDurationPerWeek)
	let oneormorehf = EvaluationItem(literal: Presentation.oneormorehf)
	let twounscheduled = EvaluationItem(literal: Presentation.twounscheduled)
	let chestpain = EvaluationItem(literal: Presentation.chestpain)
	let weightgain = EvaluationItem(literal: Presentation.weightGain)
	let dyspneaonexe = Dyspneaonexe(literal: Presentation.dyspneaonexe)
	let dyspneaatrest = EvaluationItem(literal: Presentation.dyspneaAtRestOrphopnea)
	let spicd = EvaluationItem(literal: Presentation.spicd)
	let spbivppm = EvaluationItem(literal: Presentation.spbivppm)
	let spppmrv = EvaluationItem(literal: Presentation.spppmrv)
	
	override var items : [EvaluationItem] {
		return [
			newonset,
			chronicHF,
			hfdiagnosis,
			oneormorehf,
			twounscheduled,
			chestpain,
			weightgain,
			dyspneaonexe,
			dyspneaatrest,
			spicd,
			spbivppm,
			spppmrv
		]
	}
}


class Dyspneaonexe : EvaluationItem {

	let class1 = EvaluationItem(literal: Presentation.class1)
	let class2 = EvaluationItem(literal: Presentation.class2)
	let class3 = EvaluationItem(literal: Presentation.class3)
	
	override var items: [EvaluationItem]{
		return [
			class1,
			class2,
			class3
		]
	}
	
}


class Etiology : EvaluationItem {
	
	let idiopathic = EvaluationItem(literal: Presentation.idiopathicDCMNonischemic)
	let postmi = EvaluationItem(literal: Presentation.postMIMore45Days)
	let ischemic = EvaluationItem(literal: Presentation.ischemicPostMILess45Day)
	let cardiotoxins = Cardiotoxins(literal: Presentation.cardiotoxis)
	let familialcmp = EvaluationItem(literal: Presentation.familiarCMPSuddenDeath)
	let valvular = EvaluationItem(literal: Presentation.valvularHeartDisease)
	let rvdysplasia = EvaluationItem(literal: Presentation.rvDysplasia)
	let hocm = HOCM(literal: Presentation.hocm)
	let myocarditis = EvaluationItem(literal: Presentation.myocarditis)
	
	override var items: [EvaluationItem] {
		return [
			idiopathic,
			postmi,
			ischemic,
			cardiotoxins,
			familialcmp,
			valvular,
			rvdysplasia,
			hocm,
			myocarditis
		]
	}
}


class Cardiotoxins : EvaluationItem {
	
	let radiationtherapy = RadiationTherapy(literal: Presentation.radiationtherapy)
	let antracyclines = EvaluationItem(literal: Presentation.antracyclines)
	let antiher2 = EvaluationItem(literal: Presentation.antiher2)
	let alkylating = EvaluationItem(literal: Presentation.alkylating)
	let immuno = EvaluationItem(literal: Presentation.immuno)
	let protease = EvaluationItem(literal: Presentation.protease)
	let thyrosine = EvaluationItem(literal: Presentation.thyrosine)
	let atezo = EvaluationItem(literal: Presentation.atezo)
	let vegf = EvaluationItem(literal: Presentation.vegf)
	
	override var items: [EvaluationItem] {
		return [
			radiationtherapy,
			antracyclines,
			antiher2,
			alkylating,
			immuno,
			protease,
			thyrosine,
			atezo,
			vegf
		]
	}
}


class RadiationTherapy: EvaluationItem {
	
	let anteriorchest = EvaluationItem(literal: Presentation.anteriorchest)
	let tumor = EvaluationItem(literal: Presentation.tumor)
	let shield = EvaluationItem(literal: Presentation.shield)
	let highdosert = EvaluationItem(literal: Presentation.highdosert)
	let cumulative = EvaluationItem(literal: Presentation.cumulative)
	let concomitant = EvaluationItem(literal: Presentation.concomitant)
	
	override var items: [EvaluationItem] {
		return [
			anteriorchest,
			tumor,
			shield,
			highdosert,
			cumulative,
			concomitant
		]
	}
}


class HOCM : EvaluationItem {
	
	let lvhmore = EvaluationItem(literal: Presentation.lvmore)
	let abnormalbp = EvaluationItem(literal: Presentation.abnormalBPResponse)
	let historysudden = EvaluationItem(literal: Presentation.historysudden)
	let restdynamic = EvaluationItem(literal: Presentation.restDynamicPeakLVOT)
	
	override var items : [EvaluationItem] {
		return [
			lvhmore,
			abnormalbp,
			historysudden,
			restdynamic
		]
	}
}


class Clinical : EvaluationItem {
	
	let lvef = EvaluationItem(literal: Presentation.lvef)
	let rasat = EvaluationItem(literal: Presentation.rasat)
	let vo2sat = EvaluationItem(literal: Presentation.vo2sat)
	let hjr = EvaluationItem(literal: Presentation.hepatojulularRefluxInPhysicalExam)
	let jugular = EvaluationItem(literal: Presentation.jugularVenousDistentionInPhysicalExam)
	let edema = EvaluationItem(literal: Presentation.edemaInPhysicalExam)
	let leftside = EvaluationItem(literal: Presentation.leftSidedS3S4Gallop)
	let newrales = EvaluationItem(literal: Presentation.newRalesInPhysicalExam)
	let pulmonaryedema = EvaluationItem(literal: Presentation.pulmonaryEdema)
	let lowurine = EvaluationItem(literal: Presentation.lowurine)
	let anycns = EvaluationItem(literal: Presentation.anyCNSSymptomsInPhysicalExam)
	let coldclammy = EvaluationItem(literal: Presentation.coldClammyExtremitiesInPhysicalExam)
	let cyanosis = EvaluationItem(literal: Presentation.cyanosisInPhysicalExam)
	
	override var items : [EvaluationItem] {
		return [
			lvef,
			rasat,
			vo2sat,
			hjr,
			jugular,
			edema,
			leftside,
			newrales,
			pulmonaryedema,
			lowurine,
			anycns,
			coldclammy,
			cyanosis
		]
	}
}


class AHAStage : EvaluationItem {
	
	let athighrisk = EvaluationItem(literal: Presentation.atHighRiskOfHF)
	let nosignsofhf = EvaluationItem(literal: Presentation.structuralHeartDeseaseNoSymptoms)
	let symptomsofhf = EvaluationItem(literal: Presentation.structuralHeartDeseaseSymptoms)
	let advancedhf = AdvancedHF(literal: Presentation.advancedHF)
	let nyhaclass1 = EvaluationItem(literal: Presentation.nyhaccvsClass1)
	let nyhaclass2 = EvaluationItem(literal: Presentation.nyhaccvsClass2)
	let nyhaclass3 = EvaluationItem(literal: Presentation.nyhaccvsClass3)
	let nyhaclass4 = EvaluationItem(literal: Presentation.nyhaccvsClass4)
	
	override var items: [EvaluationItem] {
		return [
			athighrisk,
			nosignsofhf,
			symptomsofhf,
			advancedhf,
			nyhaclass1,
			nyhaclass2,
			nyhaclass3,
			nyhaclass4
		]
	}
}


class AdvancedHF : EvaluationItem {
	
	let calculatehfss = EvaluationItem(literal: Presentation.calculateHFSS)
	let noSignificantComorbidities = EvaluationItem(literal: Presentation.noSignificantComorbidities)
	let vo2maxkg = EvaluationItem(literal: Presentation.vo2maxkg)
	
	override var items : [EvaluationItem] {
		return [
			calculatehfss,
			noSignificantComorbidities,
			vo2maxkg
		]
	}
}


class Hometherapeutics : EvaluationItem {
	
	let bblocker = BBlocker(literal: Presentation.bBlocker)
	let acelARB = AcelARB(literal: Presentation.acelARB)
	let poDiuretic = PODiuretic(literal: Presentation.poDiuretic)
	let currentvka = EvaluationItem(literal: Presentation.currentVKATherapy)
	let ccb = EvaluationItem(literal: Presentation.ccbOtherVasolidators)
	let vasodilator = EvaluationItem(literal: Presentation.vasodilator)
	
	override var items : [EvaluationItem] {
		return [
			bblocker,
			acelARB,
			poDiuretic,
			currentvka,
			ccb,
			vasodilator
		]
	}
}


// MARK: - HSR -> POMeds -> B Blocker

class BBlocker: EvaluationItem {
	
	let carvedilol3125bid = EvaluationItem(literal: Presentation.carvedilol3125bid)
	let carvedilol625bid = EvaluationItem(literal: Presentation.carvedilol625bid)
	let carvedilol125bid = EvaluationItem(literal: Presentation.carvedilol125bid)
	let carvedilol25bid = EvaluationItem(literal: Presentation.carvedilol25bid)
	let metoproloIER25qd = EvaluationItem(literal: Presentation.metoproloIER25qd)
	let metoproloIER50qd = EvaluationItem(literal: Presentation.metoproloIER50qd)
	let metoproloIER100qd = EvaluationItem(literal: Presentation.metoproloIER100qd)
	let metoproloIER150qd = EvaluationItem(literal: Presentation.metoproloIER150qd)
	let metoproloIER200qd = EvaluationItem(literal: Presentation.metoproloIER200qd)
	
	override var items: [EvaluationItem] {
		return [
			carvedilol3125bid,
			carvedilol625bid,
			carvedilol125bid,
			carvedilol25bid,
			metoproloIER25qd,
			metoproloIER50qd,
			metoproloIER100qd,
			metoproloIER150qd,
			metoproloIER200qd
		]
	}
}


// MARK: - HSR -> POMeds -> Acel/ARB

class AcelARB: EvaluationItem {
	
	let lisinopril5 = EvaluationItem(literal: Presentation.lisinopril5)
	let lisinopril10 = EvaluationItem(literal: Presentation.lisinopril10)
	let lisinopril20 = EvaluationItem(literal: Presentation.lisinopril20)
	let losartan25 = EvaluationItem(literal: Presentation.losartan25)
	let losartan50 = EvaluationItem(literal: Presentation.losartan50)
	let losartan100 = EvaluationItem(literal: Presentation.losartan100)
	
	override var items: [EvaluationItem] {
		return [
			lisinopril5,
			lisinopril10,
			lisinopril20,
			losartan25,
			losartan50,
			losartan100
		]
	}
}


// MARK: - HSR -> POMeds -> PO Diuretic

class PODiuretic: EvaluationItem {
	
	let furosemide40 = EvaluationItem(literal: Presentation.furosemide40)
	let furosemide80 = EvaluationItem(literal: Presentation.furosemide80)
	let furosemide80Plus = EvaluationItem(literal: Presentation.furosemide80Plus)
	let bumex1 = EvaluationItem(literal: Presentation.bumex1)
	let bumex2 = EvaluationItem(literal: Presentation.bumex2)
	let bumex2Plus = EvaluationItem(literal: Presentation.bumex2Plus)
	let torsemide20 = EvaluationItem(literal: Presentation.torsemide20)
	let torsemide40 = EvaluationItem(literal: Presentation.torsemide40)
	let torsemide50Plus = EvaluationItem(literal: Presentation.torsemide50Plus)
	let hctz = EvaluationItem(literal:Presentation.hctz)
	let indapamide = EvaluationItem(literal: Presentation.indapamide)
	let chlorthalidoneMetolazone = EvaluationItem(literal: Presentation.chlorthalidoneMetolazone)
	
	override var items: [EvaluationItem] {
		return [
			furosemide40,
			furosemide80,
			furosemide80Plus,
			bumex1,
			bumex2,
			bumex2Plus,
			torsemide20,
			torsemide40,
			torsemide50Plus,
			hctz,
			indapamide,
			chlorthalidoneMetolazone
		]
	}
}



class Acutely : EvaluationItem {
	
	let day1 = EvaluationItem(literal: Presentation.day1)
	let day2 = EvaluationItem(literal: Presentation.day2)
	let day3 = EvaluationItem(literal: Presentation.day3)
	let predischarge = EvaluationItem(literal: Presentation.predischarge)
	
	override var items : [EvaluationItem] {
		return [
			day1,
			day2,
			day3,
			predischarge
		]
	}
}


class InHospitalTherapies : EvaluationItem {
	
	let defibrill = EvaluationItem(literal: Presentation.defibrillationACLS)
	let urgentcv = EvaluationItem(literal: Presentation.urgentCV)
	let ivvasopressor = EvaluationItem(literal: Presentation.ivVasopressors)
	let ivvasoactive = IVVasoactive(literal: Presentation.ivVasoactive)
	let ivantia = IVAntiarrythmic(literal: Presentation.ivAntiarrythmic)
	let ivantihy = IVAntihypertensive(literal: Presentation.ivAntihypertensive)
	let ivdiur = IVDiuretic(literal: Presentation.ivDiuretic)
	let mechanicalven = MechanicalVentiallationOrNIPPV(literal: Presentation.mechanicalVentiallationOrNIPPV)
	let o2supplement = EvaluationItem(literal:Presentation.o2Supplement)
	let ultrafil = EvaluationItem(literal: Presentation.ultrafiltration)
	let iabp = EvaluationItem(literal: Presentation.iabp)
	let temporarypm = EvaluationItem(literal: Presentation.temporaryPM)
	let onmaximumtoleB = EvaluationItem(literal: Presentation.onmaximumtoleB)
	let onmaximumtole = EvaluationItem(literal: Presentation.onmaximumtole)
	let chronicinotro = EvaluationItem(literal: Presentation.chronicintro)
	let intermitt = EvaluationItem(literal: Presentation.intermitt)
	
	override var items: [EvaluationItem] {
		return [
			defibrill,
			urgentcv,
			ivvasopressor,
			ivvasoactive,
			ivantia,
			ivantihy,
			ivdiur,
			mechanicalven,
			o2supplement,
			ultrafil,
			iabp,
			temporarypm,
			onmaximumtole,
			chronicinotro,
			intermitt
		]
	}
}

// MARK: - HSR -> InHospital -> IV Antiarrythmic

class IVAntiarrythmic: EvaluationItem {
	
	let continuousInAntiarrythmic = EvaluationItem(literal: Presentation.continuousInAntiarrythmic)
	let bolusInAntiarrythmic = EvaluationItem(literal: Presentation.bolusInAntiarrythmic)
	let titrationInAntiarrythmic = EvaluationItem(literal: Presentation.titrationInAntiarrythmic)
	let monitoringFrequencyQhrInAntiarrythmic = EvaluationItem(literal: Presentation.monitoringFrequencyQhrInAntiarrythmic)
	let transitionToPOAntiarrythmicInAntiarrythmic = EvaluationItem(literal: Presentation.transitionToPOAntiarrythmicInAntiarrythmic)
	
	override var items: [EvaluationItem] {
		return [
			continuousInAntiarrythmic,
			bolusInAntiarrythmic,
			titrationInAntiarrythmic,
			monitoringFrequencyQhrInAntiarrythmic,
			transitionToPOAntiarrythmicInAntiarrythmic
		]
	}
}


// MARK: - HSR -> InHospital -> iv Antihypertensive

class IVAntihypertensive: EvaluationItem {
	
	let blnIVHTcon = EvaluationItem(literal: Presentation.blnIVHTcon)
	let blnIVHTbolus = EvaluationItem(literal: Presentation.blnIVHTbolus)
	let blnIVHTtitr = EvaluationItem(literal: Presentation.blnIVHTtitr)
	let txtHTmonitor = EvaluationItem(literal: Presentation.txtHTmonitor)
	
	override var items: [EvaluationItem] {
		return [
			blnIVHTcon,
			blnIVHTbolus,
			blnIVHTtitr,
			txtHTmonitor
		]
	}
}


// MARK: - HSR -> InHospital -> IV Vasoactive

class IVVasoactive: EvaluationItem {
	
	let blnIVVAcon = EvaluationItem(literal: Presentation.blnIVVAcon)
	let blnIVVAbolus = EvaluationItem(literal: Presentation.blnIVVAbolus)
	let blnIVVAtitr = EvaluationItem(literal: Presentation.blnIVVAtitr)
	let txtVAmonitor = EvaluationItem(literal: Presentation.txtVAmonitor)
	let blnIVNPSz = EvaluationItem(literal: Presentation.blnIVNPSz)
	let blnIVNTG = EvaluationItem(literal: Presentation.blnIVNTG)
	let blnmilrinone = EvaluationItem(literal: Presentation.blnmilrinone)
	
	override var items: [EvaluationItem] {
		return [
			blnIVVAcon,
			blnIVVAbolus,
			blnIVVAtitr,
			txtVAmonitor,
			blnIVNPSz,
			blnIVNTG,
			blnmilrinone
		]
	}
}


// MARK: - HSR -> InHospital -> IV Diuretic

class IVDiuretic: EvaluationItem {
	
	let blncon = EvaluationItem(literal: Presentation.blncon)
	let blnPODI = EvaluationItem(literal: Presentation.blnPODI)
	let txtmonitor = EvaluationItem(literal: Presentation.txtmonitor)
	
	override var items: [EvaluationItem] {
		return [
			blncon,
			blnPODI,
			txtmonitor
		]
	}
}


// MARK: - HSR -> InHospital -> Mechanical Ventiallation or NIPPV

class MechanicalVentiallationOrNIPPV: EvaluationItem {
	
	let txtRI = EvaluationItem(literal: Presentation.txtRI)
	
	override var items: [EvaluationItem] {
		return [txtRI]
	}
}


class Discharge : EvaluationItem {
	
	let dischargedaily = EvaluationItem(literal:Presentation.dischargedaily)
	let predischarge6mw = EvaluationItem(literal: Presentation.predischarge6mw)
	let predischargebnp = EvaluationItem(literal: Presentation.predischargebnp)
	let vo2max = EvaluationItem(literal: Presentation.vo2maxkg)
	let bblockerinto = EvaluationItem(literal: Presentation.bblockerinto)
	let noncardiac = EvaluationItem(literal: Presentation.noncardiac)
	
	override var items: [EvaluationItem] {
		return [
			dischargedaily,
			predischarge6mw,
			predischargebnp,
			vo2max,
			bblockerinto,
			noncardiac
		]
	}
}

