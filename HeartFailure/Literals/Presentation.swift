//
//  Presentation.swift
//  CVDEvaluator
//
//  Created by IgorKhomiak on 2/10/17.
//  Copyright © 2017 IgorKhomiak. All rights reserved.
//

import UIKit


func identifierBy(literal: String) -> String {
	let components: [String] = literal.components(separatedBy: "|")
	
	var identifier: String = "unsupported"
	
	for strItem in components {
		
		let strTrimmed = strItem.trimmingCharacters(in: .whitespacesAndNewlines)
		guard strTrimmed.hasPrefix("#") else { continue }
		
		let components: [String] = strTrimmed.components(separatedBy: ":")
		guard components.count == 2 else { continue }
		
		let trimmedKeyComponent = components[0].trimmingCharacters(in: .whitespacesAndNewlines)
		guard let key = PresentationKey(rawValue: trimmedKeyComponent) else { continue }
		
		let storedValue = components[1].trimmingCharacters(in: .whitespacesAndNewlines)
		
		switch key {
		case .id:
			identifier = storedValue
		default:
			()
		}
	}
	return identifier
}


enum PresentationKey: String {
	case id = "#id"
	case title = "#title"
	case subtitle = "#subtitle"
	case type = "#type"
	case height = "#height"
	case placeholder = "#placeholder"
	case min = "#min"
	case max = "#max"
	case maxLength = "#maxLength"
	case value = "#value"
	case group = "#group"
	case mandatory = "#mandatory"
	case selected = "#selected"
	case text = "#text"
	case alert = "#alert"
	case dependsOn = "#dependsOn"
	case dependMin = "#dependMin"
	case dependMax = "#dependMax"
	case subItems = "#subItems"
}


struct Presentation {
	
	// Global:
	static let separator = "#type:#separator| #title: untitled| #id: separator"
	static let evaluation = "#type:#model| #title: Evaluation| #id: evaluation"
	
	//
	// MARK: - Evaluation: https://zpl.io/Z1WoemX
	//
	static let bio = 			"#id:bio |      #title:Bio |  #type:#disclosureVieved | #mandatory: 1"
	static let coronaryHeartDisease = "#id:coronaryHeartDisease | #title:Coronary Heart Disease | #type:#disclosureWeather"
	static let heartFailure = "#id:heartFailure | #title:Heart Failure | #type:#disclosureWeather"
	static let atrialFibrillation = "#id:atrialFibrillation | #title:Atrial Fibrillation | #type:#disclosureWeather"
	static let thromboembolicVKA = "#id:thromboembolicVKA | #title:Thromboembolic/VKA | #type:#disclosureWeather"
	static let ventricularTachyarrthymias = "#id:ventricularTachyarrthymias | #title:Ventricular Tachyarrthymias | #type:#disclosureWeather"
	static let bradyarrthymiaSyncope = "#id:bradyarrthymiaSyncope | #title:Bradyarrthymia/Syncope | #type:#disclosureWeather"
	static let riskFactors = 	"#id:riskFactors| #title:Major CV Risk Factors| #type:#disclosureVieved"
	static let laboratories = "#id:laboratories| #title:Laboratories| #type:#disclosureVieved"
	static let diagnostics = "#id:diagnostics| #title:Diagnostics| #type:#disclosureVieved"
	static let hsr = "#id:nsr| #title:Current Therapies| #type:#disclosureVieved"
	
	static let heartSpecialistManagement = "#id:heartSpecialistManagement| #title:Heart Specialist Management | #type:#disclosureVieved"
	static let outputInMain = "#id:outputInMain| #title:Results | #type:#disclosureVieved"
	
	
	//
	// MARK: - Bio: https://zpl.io/27Yx0I
	//
	static let name = 		"#id:name|      #title:Name|      #type:#textLeft |  #placeholder: Patient Name  | #maxLength: 50 | #mandatory: 1"
	static let age = 			"#id:age |      #title:Age|       #type:#integerLeft|   #min:20|  #max:100| #placeholder: Patient Age | #mandatory: 1"
	//static let gender = 		"#id:gender|    #title:Gender*|    #type:#disclosureSimple | #height: 60"
	static let gender = 		"#id:gender|    #title:Gender*|    #type:#disclosureSimpleExpandable | #height: 60"
	static let bmi = 		"#id:txtBMI|    #title:BMI|    #type:#integerLeft|   #min:10.0|  #max:50.0| #placeholder: BMI Value"
	static let weight = 		"#id:weight|    #title:Weight|    #type:#integerLeft|   #min:40|  #max:400| #placeholder: Weight/kg"
	static let heartRate = 	"#id:HR| #title:Heart Rate| #type:#integerLeft| #min:30|  #max:300| #placeholder: Heart Rate"
	static let bioSBP = 		"#id:sbp|       #title:SBP|  #type:#decimalLeft| #min:60|  #max:300| #placeholder: SBP mmHg | #mandatory: 1"
	static let bioDBP = 		"#id:dbp|       #title:DBP|  #type:#decimalLeft| #min:30|  #max:160| #placeholder: DBP mmHg | #mandatory: 1"
	static let bioOrthostaticSBP = 		"#id:OrthostaticSBP|       #title:Orthostatic SBP|  #type:#decimalLeft| #min:0|  #max:240| #placeholder: DBP mmHg"
	static let bioOrthostaticSymptoms = "#id:chkSymptomatic|    #title:Orthostatic Symptoms | #type:#check"
	static let bioWaistCirc = "#id:waist | #title:Waist Circ. |  #type:#decimalLeft| #min:20|  #max:60| #placeholder: DBP mmHg "
	static let bioAA = "#id:chkAsianCode  |  #title:AA |    #type:#check"
	static let bioPregnancy = "#id:chkpreg |    #title:Pregnancy |    #type:#check"
	static let bioO2sat = "#id:txtO2sat | #title:O2sat% |  #type:#decimalLeft| #min:50|  #max:100| #placeholder: O2sat% "
	
	// Bio -> Gender: https://zpl.io/Z16UrC4
	static let male = 		"#id:male|    #title:Male|    #type:#radio | #group: (male, female)"
	static let female = 		"#id:female|    #title:Female|    #type:#radio | #group: (male, female)"
	
	static let maleInHMS = 		"#id:maleInHMS|    #title:Male|    #type:#radio | #group: (maleInHMS, femaleInHMS)"
	static let femaleInHMS = 		"#id:femaleInHMS|    #title:Female|    #type:#radio | #group: (maleInHMS, femaleInHMS)"
	
	
	//
	// MARK: - Heart Failure
	//
	static let history = "#id:sechistory|#title:History |#type:#disclosureSimple"
	static let etiology = "#id:secEtiology|#title:Etiology |#type:#disclosureSimple"
	static let clinical = "#id:secclinical|#title:Clinical Presentation |#type:#disclosureSimple"
	static let ahastage = "#id:secahastage|#title:AHA Stage |#type:#disclosureSimple"
	static let hometherapeutics = "#id:sechometherapeutics|#title:Home Therapeutics |#type:#disclosureSimple"
	static let acutely = "#id:secacutely|#title:Acutely Decompensated / Hospitalized |#type:#disclosureSimple"
	static let inhospitaltherapies = "#id:secinhospital|#title:In Hospital / IV Therapies |#type:#disclosureSimple"
	static let discharge = "#id:secdischarge|#title:Discharge Therapeutics |#type:#disclosureSimple"
	
	// Heart Failure -> History
	static let newOnsetHF = "#id:chknewHF |    #title:New onset HF/initial evaluation |    #type:#check"
	static let chronicHF = "#id:chkchronic |    #title:Chronic known HF |    #type:#check"
	static let hfDiagnosisDurationPerWeek = "#id:txtdur|    #title:Duration / Week | #type:#integerRight|   #min:0|  #max:999|  #placeholder: "
	static let oneormorehf = "#id:chkHFPLVF |    #title:One or more HF admissions in 12 months |    #type:#check"
	static let twounscheduled = "#id:chkfoutpt |    #title:Two unscheduled ED or clinic visits in 12 months |    #type:#check"
	static let chestpain = "#id:chkTA |    #title:Chest Pain | #type: #check"
	static let weightGain = "#id:chkWeight|    #title:Weight Gain|    #type:#check"
	static let dyspneaonexe = "#id:chkDOE | #title:Dyspnea on exertion | #type:#disclosureControl"
	static let dyspneaAtRestOrphopnea = "#id:chkdysp|    #title:Dyspnea at Rest|    #type:#check"
	static let spicd = "#id:chkICD |    #title:S/P AICD|    #type:#check"
	static let spbivppm = "#id:chkCRTI |    #title:S/P BIVPACER | #type: #check"
	static let spppmrv = "#id:chkPPM |    #title:S/P PPM RV LEAD ONLY | #type: #check"
	
	// Heart Failure -> History -> Dyspneaonexe
	static let class1 = "#id:chkclass1 |    #title:Dyspnea on strenous exertion | #type: #check"
	static let class2 = "#id:chkclass2 |    #title:Dyspnea on more than routine activities | #type: #check"
	static let class3 = "#id:chkclass3 |    #title:Dyspnea on minimun activities | #type: #check"
	
	// Heart Failure -> Etiology
	static let idiopathicDCMNonischemic = "#id:chkNonischemicCMP | #title:Idiopathic/DCM/Nonischemic | #type:#check"
	static let postMIMore45Days = "#id:chkMI | #title:Post MI > 45 Days | #type: #check"
	static let ischemicPostMILess45Day = "#id:chkIschemic | #title:Ischemic Post MI < 45 days | #type:#check"
	static let cardiotoxis = "#id:chkCardiotoxins | #title:Cardiotoxins | #type:#disclosureControl"
	static let familiarCMPSuddenDeath = "#id:chkFamHXofCMP | #title:Familial CMP Associated with Sudden Death | #type:#check"
	static let valvularHeartDisease = "#id:chkvalvular | #title:Valvular Heart Disease | #type:#disclosureWeather | #alert: Refer to Heart Failure Specialist for Management"
	static let myocarditis = "#id:chkmyocarditis | #title:Myocarditis | #type:#check"
	static let rvDysplasia = "#id:chkSuspectedRVDysplasia | #title:RV Dysplasia | #type:#check"
	static let hocm = "#id:chkIschemicCMP| #title:HOCM | #type:#disclosureControl"
	
	// Heart Failure -> Etiology -> Cardiotoxins
	static let radiationtherapy = "#id:chkXRT | #title:Radiation therapy | #type:#disclosureControl"
	static let antracyclines = "#id:chkantracyclines |  #title:Antracyclines | #type: #check"
	static let antiher2 = "#id:chktrastuzumab |  #title:AntiHER2/ Trastuzumab | #type: #check"
	static let alkylating = "#id:chkhormonal |  #title:Alkylating | #type: #check"
	static let immuno = "#id:chkimmuno |  #title:5-FU | #type: #check"
	static let protease = "#id:chkprotease |  #title:Protease inhibitor | #type: #check"
	static let thyrosine = "#id:chkthyrosine |  #title:Thyrosine kinase inhibitor | #type: #check"
	static let atezo = "#id:chkatezo | #title:PDL/PDL-1 | #type: #check"
	static let vegf = "#id:chkVEGF | #title:VEGF inhibitor | #type: #check"
	
	// Heart Failure -> Etiology -> Cardiotoxins -> RadiationTherapy
	static let anteriorchest = "#id:chkanteriorchest |  #title:Anterior chest | #type: #check"
	static let tumor = "#id:chktumor |  #title:Tumor next to heart | #type: #check"
	static let shield = "#id:chkshield |  #title:No shielding | #type: #check"
	static let highdosert = "#id:chkhighdoseRT |  #title:High dose XRT > 2Gy/day | #type: #check"
	static let cumulative = "#id:chkcumulative |  #title:Cumulative > 30Gy | #type: #check"
	static let concomitant = "#id:chkconchem |  #title:Concomitant chemo | #type: #check"
	
	// Heart Failure -> Etiology -> HOCM
	static let lvmore = "#id:chklvhg |  #title:LVH ≥ 30mm | #type: #check"
	static let historysudden = "#id:chkfamhistsudden |  #title:History of Sudden Death | #type: #check"
	static let restDynamicPeakLVOT = "#id:chkLVOT | #title:Rest/Dynamic Peak LVOT Gradient > 50mmHg | #type:#check"
	
	// Heart Failure -> Clinical
	static let lvef = "#id:txtCHF | #title:LVEF | #type:#integerRight|   #min:1|  #max:80|  #placeholder: "
static let  vo2sat = "#id:txtVo2sat | #title:CV/SVO2sat% | #type:#integerRight|   #min:30|  #max:100|  #placeholder: "
	static let rasat = "#id:txtO2sat | #title:RA O2 SAT | #type:#integerRight|   #min:30|  #max:100|  #placeholder: "
	static let hepatojulularReflux = "#id:chkHJR | #title:Hepatojulular Reflux | #type:#check"
	static let jugularVenousDistention = "#id:chkJVD | #title:Jugular Venous Distention | #type:#check"
	static let edemaInHeartFailure = "#id:chkedema | #title:Edema | #type:#check"
	static let leftSidedS3S4Gallop = "#id:chkS3 | #title:Left Sided S3 Gallop | #type:#check"
	static let newRales = "#id:chkMR | #title:New Rales | #type:#check"
	static let pulmonaryEdema = "#id:chkpuledema  | #title:Pulmonary Edema | #type:#check"	
	static let anyCNSSymptoms = "#id:chkAMS | #title:Any CNS Symptoms | #type:#check"
	static let coldClammyExtremities = "#id:chkshock | #title:Cold Clammy Extremities | #type:#check"
	static let cyanosisInHeartFailure = "#id:chkCyanosis | #title:Cyanosis | #type:#disclosureControl"
	static let lowurine = "#id:chklowurine |  #title:Low Urine Output < 30ml/hr | #type: #check"
	
	// Heart Failure -> AHAStage
	static let atHighRiskOfHF = "#id:chkA|    #title:At High Risk for HF, but without Structural Heart Disease or Symptoms of HF NYHA/CCVS Class 0|    #type:#check"
	static let structuralHeartDeseaseNoSymptoms = "#id:chkB| #title:Structural Heart Disease, but without signs/symptoms of HF|    #type:#check"
	static let structuralHeartDeseaseSymptoms = "#id:chkC| #title:Structural Heart Diseasewith prior or current symptoms of HF|    #type:#check"
	static let advancedHF = "#id:chkadvancedHF | #title:Advanced HF | #type:#disclosureControl"
	static let nyhaccvsClass1 = "#id:chkNYHA1 | #title: NYHA/CCVS Class 1 | #type:#check"
	static let nyhaccvsClass2 = "#id:chkNYHA2 | #title: NYHA/CCVS Class 2 | #type:#check"
	static let nyhaccvsClass3 = "#id:chkNYHA3 | #title: NYHA/CCVS Class 3 | #type:#check"
	static let nyhaccvsClass4 = "#id:chkNYHA4 | #title: NYHA/CCVS Class 4 | #type:#check"
	
	// Heart Failure -> AHAStage -> AdvancedHF
	static let calculateHFSS = "#id:CalculateHFSS | #title:Calculate HFSS, enter NAmeq, VO₂ max, Heart Rate, and ECG QRS Duration | #type:#label"
	static let noSignificantComorbidities = "#id:chkcom | #title:No Significant Comorbidities |#type:#disclosureWeather | #alert: Refer to Heart Failure Specialist for Management"
	static let vo2maxkg = "#id:vo2maxkg | #title:VO₂ max kg/ | #type:#decimalRight | #min:6 | #max:40 | #placeholder: "
	
	// Heart Failure -> Hometherapeutics
	static let bBlocker = "#id:chkcar | #title:B Blocker | #type:#disclosureControl"
	static let acelARB = "#id:chkace | #title:Acel/ARB | #type:#disclosureControl"
	static let poDiuretic = "#id:chkdiuretic | #title:PO Diuretic | #type:#disclosureControl"
	static let ccbOtherVasolidators = "#id:chkCCB | #title:CCB, Other Vasolidators | #type:#check"
	static let currentVKATherapy = "#id:chkVKA| #title:Current VKA Therapy | #type:#check"
	static let vasodilator = "#id:chkvasodilator |  #title:Vasodilator | #type: #check"
	
	// Heart Failure -> Hometherapeutics -> B Blocker
	static let carvedilol3125bid = "#id:chkBisoprolol25 | #title:Carvedilol 3.125 bid | #type:#check"
	static let carvedilol625bid = "#id:chkCarvedilol625 | #title:Carvedilol 6.25 bid | #type:#check"
	static let carvedilol125bid = "#id:chkCarvedilol125 | #title:Carvedilol 12.5 bid | #type:#check"
	static let carvedilol25bid = "#id:chkCarvedilol25 | #title:Carvedilol 25 bid | #type:#check"
	static let metoproloIER25qd = "#id:chkBisoprolol5 | #title:MetoproloIER 25 qd | #type:#check"
	static let metoproloIER50qd = "#id:chkMetoprololER50 | #title:MetoproloIER 50 qd | #type:#check"
	static let metoproloIER100qd = "#id:chkMetoprololER100 | #title:MetoproloIER 100 qd | #type:#check"
	static let metoproloIER150qd = "#id:chkMetoproloIER150 | #title:MetoproloIER 150 qd | #type:#check"
	static let metoproloIER200qd = "#id:chkMetoprololER200 | #title:MetoproloIER 200 qd | #type:#check"
	
	// Heart Failure -> Hometherapeutics -> Acel/ARB
	static let lisinopril5 = "#id:chklisinopril5 | #title:Lisinopril <10mg qd | #type:#check"
	static let lisinopril10 = "#id:chklisinopril10| #title:Lisinopril 10-20mg qd | #type:#check"
	static let lisinopril20 = "#id:chklisinopril20 | #title:Lisinopril 20mg qd | #type:#check"
	static let losartan25 = "#id:chklosartan25 | #title:Lorsatan 25mg qd | #type:#check"
	static let losartan50 = "#id:chklosartan50 | #title:Lorsatan 50mg qd | #type:#check"
	static let losartan100 = "#id:chklosartan100 | #title:Lorsatan 100mg qd | #type:#check"
	
	// Heart Failure -> Hometherapeutics -> PO Diuretic https://zpl.io/1FSlBB
	static let furosemide40 = "#id:chkfurosemide40 | #title:Furosemide 40 | #type:#check"
	static let furosemide80 = "#id:chkfurosemide80 | #title:Furosemide 80 | #type:#check"
	static let furosemide80Plus = "#id:chkfurosemide81 | #title:Furosemide 80+ | #type:#check"
	static let bumex1 = "#id:chkbumex1 | #title:Bumex 1 | #type:#check"
	static let bumex2 = "#id:chkbumex2 | #title:Bumex 2 | #type:#check"
	static let bumex2Plus = "#id:chkbumex3 | #title:Bumex 2+ | #type:#check"
	static let torsemide20 = "#id:chktorsemide20 | #title:Torsemide 20 | #type:#check"
	static let torsemide40 = "#id:chktorsemide40 | #title:Torsemide 40 | #type:#check"
	static let torsemide50Plus = "#id:chktorsemide50 | #title:Torsemide 50+ | #type:#check"
	static let hctz = "#id:chkHCTZ | #title:HCTZ | #type:#check"
	static let indapamide = "#id:chkindapamide | #title:Indapamide | #type:#check"
	static let chlorthalidoneMetolazone = "#id:chkchlorthalidone | #title:Chlorthalidone, Metolazone |#type:#check"
	
	// Heart Failure -> Acutely
	static let day1 = "#id:chkD1|    #title:Day 1|    #type:#check"
	static let day2 = "#id:chkD2|    #title:Day 2|    #type:#check"
	static let day3 = "#id:chkD3|    #title:Day 3|    #type:#check"
	static let predischarge = "#id:chkpredischarge |  #title:Pre-discharge or Discharge day  | #type: #check"
	
	// Heart Failure -> InHospitalTherapies
	static let ivAntiarrythmic = "#id:chkIVAA | #title:IV Antiarrythmic | #type:#disclosureControl"
	static let urgentCV = "#id:chkurgcv | #title:Urgent CV | #type:#check"
	static let defibrillationACLS = "#id:chkdefib | #title:Defibrillation/ACLS | #type:#check"
	static let ivAntihypertensive = "#id:chkIVHT | #title:IV Antihypertensive | #type:#disclosureControl"
	static let ivVasoactive = "#id:chkIVVA | #title:IV Vasoactive | #type:#disclosureControl"
	static let ivDiuretic = "#id:chkIVDI | #title:IV Diuretic | #type:#disclosureControl"
	static let mechanicalVentiallationOrNIPPV = "#id:chkNIPPV | #title:Mechanical Ventiallation or NIPPV | #type:#disclosureControl"
	static let o2Supplement = "#id:txtOsupp | #title:O₂ Supplement % / | #type:#check | #type:#integerRight | #min:23 | #max:100 | #placeholder: Value"
	static let ivVasopressors = "#id:chkVAD | #title:IV Vasopressors | #type:#check"
	static let ultrafiltration = "#id:chkult | #title:Ultrafiltration | #type:#check"
	static let iabp = "#id:chkIABP | #title:IABP | #type:#check"
	static let temporaryPM = "#id:chkTPM | #title:Temporary PM | #type:#check"
	static let onmaximumtole = "#id:chkonmaximumtole |  #title:On Maximum Tolerated or Intolerant Acel/ARB | #type: #check"
	static let onmaximumtoleB = "#id:chkonmaximumtoleB |  #title:On Maximum Tolerated B Blocker | #type: #check"
	static let chronicintro = "#id:chkchronicintro |  #title:Chronic Inotrope Dependence | #type: #check"
	static let intermitt = "#id:chkintermitt |  #title:Intermittent Inotrope Dependence | #type: #check"
	
	// Heart Failure -> InHospitalTherapies -> IV Antiarrythmic https://zpl.io/2f248Q
	static let continuousInAntiarrythmic = "#id:chkAAcon | #title:Continuous | #type:#check"
	static let bolusInAntiarrythmic = "#id:chkAAbolus | #title:Bolus | #type:#check"
	static let titrationInAntiarrythmic = "#id:chkAAtitr | #title:Titration | #type:#check"
	static let monitoringFrequencyQhrInAntiarrythmic = "#id:TxtAAmonitor | #title:Monitoring Frequency Q hr | #type:#integerRight | #min:1 | #max:12 | #placeholder: Value"
	static let transitionToPOAntiarrythmicInAntiarrythmic = "#id:chkPOAA | #title:Transition to PO Antiarrythmic | #type:#check"
	
	// Heart Failure -> InHospitalTherapies -> IV Antihypertensive https://zpl.io/DhPB6
	static let blnIVHTcon = "#id:chkHTcon | #title:Continuous | #type:#check"
	static let blnIVHTbolus = "#id:chkHTbolus | #title:Bolus | #type:#check"
	static let blnIVHTtitr = "#id:chkHTtitr | #title:Titration | #type:#check"
	static let txtHTmonitor = "#id:txtHTmonitor | #title:Monitoring Frequency Q hr  |#type:#integerRight | #min:1 | #max:12 | #placeholder: Value"
	
	// Heart Failure -> InHospitalTherapies -> IV Vasoactive https://zpl.io/Ll2Pm
	static let blnIVVAcon = "#id:chkVAcon | #title:Continuous | #type:#check"
	static let blnIVVAbolus = "#id:chkVAbolus | #title:Bolus | #type:#check"
	static let blnIVVAtitr = "#id:chkVAtitr | #title:Titration | #type:#check"
	static let txtVAmonitor = "#id:TxtVAmonitor | #title:Monitoring Frequency Q hr  |#type:#integerRight | #min:1 | #max:12 | #placeholder: Value"
	static let blnIVNPSz = "#id:chkIVNPS | #title:IV NPS | #type:#check"
	static let blnIVNTG = "#id:chkIVNTG | #title:IV NTG | #type:#check"
	static let blnmilrinone = "#id:chkmilrinone | #title:IV Milrinone | #type:#check"
	
	// Heart Failure -> InHospitalTherapies -> IV Diuretic https://zpl.io/Z5hShw
	static let blncon = "#id:chkcon | #title:Continuous | #type:#check"
	static let blnPODI = "#id:chkPODI | #title:Intermittent | #type:#check"
	static let txtmonitor = "#id:Txtmonitor | #title:Monitoring Frequency Q hr  |#type:#integerRight | #min:1 | #max:12 | #placeholder: Value"
	
	// Heart Failure -> InHospitalTherapies -> Mechanical Ventillation or NIPPV https://zpl.io/2kgsB0
	static let txtRI = "#id:txtRI | #title:Respiratory Interventions Q Hr |#type:#integerRight | #min:1 | #max:6 | #placeholder: Value"
	
	// Heart Failure -> Discharge
	static let dischargedaily = "#id:txtdischargedaily | #title:Discharge daily diuretic dose, furosemide equivalent | #type:#integerRight|   #min:10|  #max:240|  #placeholder: "
	static let predischarge6mw = "#id:txtpredischarge6mw | #title:Predischarge 6MW distance | #type:#integerRight|   #min:10|  #max:800|  #placeholder: "
	static let predischargebnp = "#id:txtpredischargebnp | #title:Predischarge BNP pg/ml | #type:#integerRight|   #min:10|  #max:80000|  #placeholder: "
	static let bblockerinto = "#id:chkbblockerinto |  #title:B blocker intolerance | #type: #check"
	static let noncardiac = "#id:chknoncardiac |  #title:Non cardiac morbidities | #type: #check"
	
	
	//
	// MARK: - Coronary Heart Disease
	//
	static let acuteCoronarySyndrome = "#id:chkACS | #title:Acute Coronary Syndrome | #type:#disclosureControl"
	static let pcicabg = "#id:chkPCI | #title:PCI/CABG | #type:#disclosureControl"
	static let stableAng = "#id:chkSTENUSIS | #title:STABLE ANG | #type:#disclosureControl"
	static let lm = "#id:chkLM | #title:LM | #type:#check"
	static let lad = "#id:chkLAD | #title:LAD | #type:#check"
//	static let rca = "#id:chkRCA | #title:RCA | #type:#check"
//	static let lcx = "#id:chkLCX | #title:LCX | #type:#check"
//	static let icd10 = "#id:chkICD-10 | #title:ICD-10 | #type:#disclosureControl"
	static let vesselmore50 = "#id:txtNumVessel | #title:# Vessel > 50% | #type:#integerRight | #min:1 | #max:3 | #placeholder: Value"
	static let lvefInCHD = "#id:TxtHF | #title:LVEF | #type:#integerRight | #min:10 | #max:80 | #placeholder: Value"
	
	//	Coronary Heart Disease -> Acute Coronary Syndrome https://zpl.io/1i9sVD
	static let moreAnginaIn24Hours = "#id:chkang24 | #title:≥ 2 Angina/24hr | #type:#check"
	static let anginaMore20min = "#id:chkAn20 | #title:Angina > 20min | #type:#check"
	static let ASAUseInPast1Week = "#id:chkASAuse | #title:ASA Use in Past 1 Week | #type:#check"
	static let postiveTropIorT = "#id:chkpositivetrop | #title:Postive Trop I or T | #type:#check"
	static let moreTwoAntanginal = "#id:chkAnAn | #title:≥ 2 Antanginal | #type:#check"
	static let stemi = "#id:chkSTEMI | #title:STEMI | #type:#disclosureControl"
	static let refractoryAngina = "#id:chkrefractory | #title:Refractory Angina | #type:#check"
	static let changingTropI = "#id:chkchangetrop | #title:Changing Trop I | #type:#check"
	
	//	Coronary Heart Disease -> Acute Coronary Syndrome -> STEMI https://zpl.io/Z1Kb0YP
	static let durationhoursSTEMI = "#id:TxtSTEMIdur | #title:Duration/Hours | #type:#integerRight | #min:0 | #max:48 | #placeholder: Value"
	static let anteriorSTEMI = "#id:chkanterior | #title:Anterior | #type:#check"
	static let inferiorSTEMI = "#id:chkinferior | #title:Inferior | #type:#check"
	static let otherSTEMI = "#id:chkother | #title:Other | #type:#check"
	
	//	Coronary Heart Disease -> PCI/CABG https://zpl.io/MV6Br
	static let lastProcedureYearsAgo = "#id:Txtprocedure | #title:Last Procedure (years ago) | #type:#integerRight | #min:0|  #max:50|  #placeholder: Value"
	static let bms = "#id:chkBMS| #title:BMS | #type:#check"
	static let des = "#id:chkDES | #title:DES | #type:#check"
	static let cabg = "#id:chkCABG | #title:CABG | #type:#disclosureControlExpandable"
	
	//	Coronary Heart Disease -> PCI/CABG -> CABG https://zpl.io/1H0tEY
	static let autoVein = "#id:chkautovein | #title:Auto Vein | #type:#check"
	static let autoArtery = "#id:chkautoartery | #title:Auto Artery | #type:#check"
	static let nonAuto = "#id:chknonauto | #title:Non Auto | #type:#check"
	
	
	//
	//	MARK: - Atrial Fibrillation https://zpl.io/1NE0A3
	//
	static let atrialFibrillationLabel = "#id: AtrialFibrillationLabel | #title: Select V/R Control | #type:#label"
	static let rhythmControl = "#id:chkCV | #title:Rhythm Control | #type:#radio | #group: (rhythmControl, ventricularRateControl)"
	static let ventricularRateControl = "#id:chkpharm | #title:Ventricular Rate Control | #type:#radio | #group: (rhythmControl, ventricularRateControl)"
	//static let rhythmControl = "#id:chkCV | #title:Rhythm Control | #type:#radio | #group: (rhythmControl, ventricularRateControl)| #selected: 1"
	//static let ventricularRateControl = "#id:chkPharm | #title:Ventricular Rate Control | #type:#radio | #group: (rhythmControl, ventricularRateControl)| #selected: 2"
	
	static let symptomatic = "#id:chkVHD | #title:Symptomatic | #type:#disclosureControlExpandable"
	static let durationDays = "#id:Txtafd | #title:Duration (Days) | #type:#integerRight | #min:0|  #max:999|  #placeholder: Value"
	static let previousTIACVA = "#id:chkPrevious | #title:Previous TIA/CVA | #type:#check"
	
	//	Atrial Fibrillation -> Rhythm Control  https://zpl.io/42VGk
	static let blnCAA = "#id:chkCAA | #title:Current Antiarrythmic Therapy | #type:#disclosureControl"
	static let blnliver = "#id:chkliver | #title:Liver Disease | #type:#check"
	
	//	Atrial Fibrillation -> Rhythm Control -> Current Antiarrythmic Therapy https://zpl.io/Z7iXr7
	static let blnclass1AA = "#id:chkclass1AA | #title:Propofonone, Flecanide | #type:#check"
	static let blnclass3AA = "#id:chkclass3AA | #title:Sotalol, Amiodarone, Multaq, Dofetilide | #type:#check"
	
	// Atrial Fibrillation -> Ventricular Heart Control https://zpl.io/Z28fdgd
	static let heartRateWithActivity = "#id:txtCMP| #title:Heart Rate with Activity | #type:#check"
	
	// Atrial Fibrillation -> Previous TIA/CVA
	static let lastthromboembolicevent = "#id:TxtPrevious| #title:Last embolic event/ months ago | #type:#integerRight | #min:0|  #max:199|  #placeholder: Value"
	
	
	//
	//	MARK: - Thromboembolic/VKA
	//
	static let deepVenousThrombosis = "#id:chkDeepVenousThrombosis | #title:Deep Venous Thrombosis | #type:#check"
	static let pulmonaryEmbolism = "#id:chkPE | #title:Pulmonary Embolism | #type:#check"
	static let dvtpeDiagnosisPrevention = "#id:chkDVTprevention | #title:DVT/PE Diagnosis/Prevention | #type:#disclosureControl"
	static let acuteCVA = "#id:chkacutecva | #title:Acute CVA | #type:#disclosureControl"
	
	// Thromboembolic/VKA -> DVT/PE Diagnosis/Prevention https://zpl.io/2ryLo7
	static let blngeneral = "#id:chkgeneral | #title:Major Surgery/Trauma | #type:#check"
	static let blnurology = "#id:chkurology | #title:Major Gyn/Urology | #type:#check"
	static let blnknee = "#id:chkknee | #title:TKR | #type:#check"
	static let blnhip = "#id:chkhip | #title:THR | #type:#check"
	static let blnHPS = "#id:chkHPS | #title:Hip Fracture | #type:#check"
	static let blncancer = "#id:chkcancer | #title:Spine Surgery | #type:#check"
	static let blnspinal = "#id:chkspinal | #title:Spinal Cord Injury | #type:#check"
	static let blnacute = "#id:chkacute | #title:Medical Illness | #type:#disclosureControl"
	
	// Thromboembolic/VKA -> DVT/PE Diagnosis/Prevention -> Medical Illness
	static let blnswelling = "#id:chkswelling | #title:Painful Deep Venous Palpation and Edema | #type:#check"
	static let blnactivecancer = "#id:chkactivecancer | #title:Active Cancer | #type:#check"
	static let blnPVTE = "#id:chkPVTE | #title:Previous VTE | #type:#check"
	static let blnRF = "#id:chkRF | #title:Respiratory Failure | #type:#check"
	static let blnthrombo = "#id:chkthrombo | #title:Already Known Thrombophilic Condition | #type:#check"
	static let blnrecent = "#id:chkRecent | #title:Recent (≤ 1mo) Trauma and/or Surgery | #type:#check"
	static let blnreduced = "#id:chkReduced | #title:Reduced Mobility, Anticipated ≥ 3 days | #type:#check"
	static let blnhormone = "#id:chkhormone | #title:Ongoing Hormonal Treatment | #type:#check"
	static let blninfection = "#id:chkinfection | #title:Acute Infection and/or Rheumatologic Disorder | #type:#check"
	
	// Thromboembolic/VKA -> Acute CVA https://zpl.io/2nDyiB (Android)
	static let nihss = "#id:txtNIHSS | #title:NIHSS | #type:#integerRight | #min:0 | #max:42 | #placeholder: Value"
	static let unilateralWeakness = "#id:chkunilateral_weakness | #title:Unilateral Weakness | #type:#check"
	static let speechDisturbance = "#id:chkspeech_disturbance | #title:Speech Disturbance | #type:#check"
	static let durationOfSymptoms = "#id:ssdur | #title:Duration of Symptoms | #type:#integerRight | #min:0 | #max:24 | #placeholder: Value"
	static let preHospitalCare = "#id:chkpreh | #title:Pre Hospital Care | #type:#check"
	
	
	//
	// MARK: - Ventricular Tachyarrthymias https://zpl.io/Lgyc4
	//
	static let nsvt = "#id:chkNSVT | #title:NSVT | #type:#check"
	static let monomorphicVT = "#id:chkMVT | #title:Monomorphic VT | #type:#check"
	static let repetitiveMonomorphicVT = "#id:chkRMVT | #title:Repetetive Monomorphic VT | #type:#check"
	static let polymorphicVT = "#id:chkPVT | #title:Polymorphic VT | #type:#check"
	static let torsades = "#id:chkTors | #title:Torsades | #type:#check"
	static let incessantVT = "#id:chkIVT | #title:Incessant VT | #type:#check"
	static let idiopathicVT = "#id:chkidioVT | #title:Idiopathic VT | #type:#check"
	
	
	//
	// MARK: - Bradyarrthymia
	//
	static let clinicalSynscopeBradyarrthymia = "#id:clinicalSynscope | #title:Clinical Synscope | #type:#check"
	static let symptomaticSinusNodeDysfunction = "#id:chkSinusNodeDysfunction | #title:Symptomatic Sinus Node Dysfunction | #type:#check"
	static let highGradeAVNodeDisease = "#id:chkAVNodeDisease | #title:High Grade AV Node Disease | #type:#check"
	static let isolatedNeurocardionegicUnexplainedSyncope = "#id:chkVasoDepressorSyncope | #title:Isolated Neurocardionegic / Unexplained Syncope | #type:#check"
	static let carotidSinusHypersensitivity = "#id:chkCarotidSinusHypersensitivity | #title:Carotid Sinus Hypersensitivity | #type:#check"
	static let pots = "#id:chkPosturalOrthostatisTac | #title:POTS (Enter Standing Heart Rate) | #type:#check"
	static let autonomicFailureSyndrome = "#id:chkAutonomicFailureSyndrome | #title:Autonomic Failure Syndrome | #type:#check"
	static let historyOfCardiacArrest = "#id:chkHistCardArrest | #title:History of Cardiac Arrest | #type:#check"
	static let brugadaSyndrome = "#id:chkBrugada | #title:Brugada Syndrome | #type:#check"
	static let longQT = "#id:chkLongQT | #title:LongQT | #type:#check"
	static let sarcoidosisGiantCellChagas = "#id:chksarc | #title:Sarcoidosis / Giant Cell / Chagas | #type:#check"
	
	
	//
	// MARK: - Major CV Risk Factors https://zpl.io/1OuArq
	//
	static let diabetes = "#id:diabetes | #title:Diabetes | #type:#disclosureControl"
	static let systemicArterialHypertension = "#id:chkSAH | #title:Systemic Arterial Hypertension | #type:#disclosureControl" // WithCheck"
	static let tobaccoUse = "#id:chkSmoke | #title:Tobacco Use | #type:#check"
	static let familyHistory = "#id:chkFamily | #title:Family History | #type:#check"
	
	// Major CV Risk Factors -> Diabetes https://zpl.io/2lz31S
	static let typeIIDM = "#id:chkDM | #title:Type II DM | #type:#disclosureControl"
	static let typeIDM = "#id:chkDM1 | #title:Type I DM | #type:#disclosureControl"
	static let gestationalDM = "#id:chkgestational | #title:Gestational DM | #type:#check"
	static let retinopathy = "#id:chkRetinopathy | #title:Retinopathy | #type:#check"
	
	static let DMNP = "#id:chkDMNP | #title:Nephropathy | #type:#check"
	static let DMCKD = "#id:chkDMCKD| #title:CKD | #type:#check"
	static let DMother = "#id:chkDMother | #title:Other Kidney comp | #type:#check"
	static let DMmono = "#id:chkDMmono | #title:Mononeuropathy| #type:#check"
	static let DMpoly = "#id:chkDMpoly| #title:Polyneuropathy | #type:#check"
	static let DMautonom = "#id:chkDMautonom | #title:Autonom neuropathy| #type:#check"
	static let DMangio = "#id:chkDMangio | #title:Peripheral Angiopathy | #type:#check"
	static let DMothercirc = "#id:chkDMothercirc| #title:Other circulatory comp| #type:#check"
	static let DMgangrene = "#id:chkDMgangrene | #title:Angiopathy with Gangrene | #type:#check"
	static let DMarthro = "#id:chkDMarthro | #title:Arthropathy | #type:#check"
	static let DMskin = "#id:chkDMskin | #title:Skin comp| #type:#check"
	static let DMoral = "#id:chkDMoral| #title:Oral comp| #type:#check"
	static let DMhypo = "#id:chkDMhypo | #title:Hypogycemia| #type:#check"
	static let DMhypocoma = "#id:chkDMhypocoma| #title:Hypoglycemia with coma | #type:#check"
	static let DMhyper = "#id:chkDMhyper | #title:Hyperglycemia | #type:#check"
	static let DMothercomp = "#id:chkDMothercomp | #title:Other comp| #type:#check"
	static let DMunspec = "#id:chkDMunspec| #title:Unspecified comp | #type:#check"
	static let DMwithout = "#id:chkDMwithout | #title:Without comp| #type:#check"
	
	// Major CV Risk Factors -> Systemic Arterial Hypertension https://zpl.io/18q0XF
	static let ambSBP = "#id:ASBP | #title:Amb SBP | #type:#integerRight | #min:80 | #max:190 | #placeholder: Value"
	static let ambDBP = "#id:ADBP | #title:Amb DBP | #type:#integerRight | #min:30 | #max:150 | #placeholder: Value"
	
	static let checkLVHOnEKGIfApplicableLabel = "#type:#label | #title: Check LVH on EKG if Applicable | #id: checkLVHOnEKGIfApplicable"
	static let sbpTreated = "#id:chkSBPTreated | #title:SBP Treated | #type:#check"
	static let africanAmerican = "#id:chkAA | #title:African American | #type:#check"
	
	static let primaryHypertensionLabel = "#type:#label | #title: Secondary Hypertension | #id: primaryHypertensionLabel"
	static let primaryHyperaldesteronism = "#id:chkaldo| #title:Primary Hyperaldesteronism | #type:#check"
	static let renovascularAtheroscleotic = "#id:chkrenovas| #title:Renovascular, Atheroscleotic | #type:#check"
	static let pheocromocytoma = "#id:chkFMD | #title:Pheocromocytoma | #type:#check"
	static let osa = "#id:chkOSA | #title:OSA | #type:#check"
	
	static let secondaryHypertensionLabel = "#type:#label | #title: Acutely Symptomatic | #id: secondaryHypertensionLabel"
	static let headachedBlurredVisionAMS = "#id:chkhead | #title:Headached, Blurred Vision or AMS | #type:#check"
	static let epistaxis = "#id:chkepis | #title:Epistaxis | #type:#check"
	static let chestBackPainDyspnea = "#id:chkCP | #title:Chest Back Pain/Dyspnea | #type:#check"
	
	
	//
	// MARK: - Laboratories https://zpl.io/2kxbQs
	//
	static let chemBasicLabel = "#id:chemBasicLabel | #title:Chem Basic | #type:#label"
	static let nameqlValue = "#id:txtNameq | #title:Na meq/l |#type:#integerRight | #min:99 | #max:170 | #placeholder: Value"
	static let urineNaMeql = "#id:txturineNa | #title:Urine Na meq/l |#type:#integerRight | #min:1 | #max:200 | #placeholder: Value | #dependsOn: nameqlValue| #dependMin: 99| #dependMax: 130"
	static let serumOsmolality = "#id:txtsosm | #title:Serum Osmolality |#type:#integerRight | #min:200 | #max:400 | #placeholder: Value | #dependsOn: nameqlValue| #dependMin: 99| #dependMax: 130"
	static let urineOsmolality = "#id:txtuosm | #title:Urine Osmolality |#type:#integerRight | #min:200 | #max:1000 | #placeholder: Value | #dependsOn: nameqlValue| #dependMin: 99| #dependMax: 130"
	static let kmeql = "#id:txtHomo | #title:K meq/l |#type:#decimalRight | #min:2.0 | #max:9.0 | #placeholder: Value"
	static let creatinineMgDl = "#id:txtcreatinine | #title:Creatinine mg/dl |#type:#decimalRight | #min:0.4 | #max:20.0 | #placeholder: Value"
	static let bunMgDl = "#id:txtBUN | #title:BUN mg/dl |#type:#integerRight | #min:6 | #max:200 | #placeholder: Value"
	static let fastingPlasmaGlucose = "#id:txtGlucose | #title:Fasting Plasma Glucose |#type:#integerRight | #min:35 | #max:1000 | #placeholder: Value"
	static let gfrMlMin173M2 = "#id:txtGFR | #title:GFR ml/min/1.73 M2 |#type:#integerRight | #min:5 | #max:120 | #placeholder: Value"
	static let worseningRenalFx = "#id:chkWG | #title:Worsening Renal Fx | #type:#check"
	
	static let lipidProfileLabel = "#id:lipidProfileLabel | #title:Lipid Profile | #type:#label"
	static let alreadyOnStatin = "#id:chkalready | #title:Already on Statin | #type:#check"
	static let statinIntolerance = "#id:chkstatint | #title:Statin Intolerance | #type:#check"
	static let cholesterol = "#id:txtCholesterol | #title:Cholesterol |#type:#integerRight | #min:40 | #max:500 | #placeholder: Value"
	static let trg = "#id:txtTRG | #title:TRG |#type:#integerRight | #min:25 | #max:25000 | #placeholder: Value"
	static let ldlc = "#id:txtLDL | #title:LDL-C |#type:#integerRight | #min:0 | #max:500 | #placeholder: Value"
	static let hdlc = "#id:txtHDL | #title:HDL-C |#type:#integerRight | #min:1 | #max:200 | #placeholder: Value"
	static let apoB = "#id:txtApoB | #title:Apo B |#type:#integerRight | #min:0 | #max:400 | #placeholder: Value"
	static let ldlp = "#id:txtLDLP | #title:LDL-P |#type:#integerRight | #min:100 | #max:5000 | #placeholder: Value"
	static let lpaMgdl = "#id:txtLPA | #title:LPa mg/dl |#type:#integerRight | #min:1 | #max:500 | #placeholder: Value"
	static let ascvdRisk = "#id:txtASCVD | #title:ASCVD Risk |#type:#decimalRight | #min:0.1 | #max:30 | #placeholder: Value"
	
	static let othersLabel = "#id:othersLabel | #title:Others | #type:#label"
	static let hba1c = "#id:txtHBA1C | #title:HBA1C |#type:#decimalRight | #min:4.9 | #max:19.99 | #placeholder: Value"
	static let crpMgl = "#id:txtCRP | #title:CRP mg/l |#type:#decimalRight | #min:0.1 | #max:30.0 | #placeholder: Value"
	static let ntProBNPPgMl = "#id:txtproBNP | #title:NT-proBNP pg/ml |#type:#integerRight | #min:50 | #max:100000 | #placeholder: Value"
	static let bnpPgMl = "#id:txtBNP | #title:BNP pg/ml |#type:#integerRight | #min:10 | #max:100000 | #placeholder: Value"
	static let albuminuriaMgGmOrMg24hr = "#id:txtMICRO | #title:Albuminuria Mg.Gm or Mg/24hr |#type:#integerRight | #min:1 | #max:10000 | #placeholder: Value"
	
	// Laboratories -> Abnormal urine sediment
	static let abnormalurinsediment = "#id:chksediment | #title:Abnormal urine sediment | #type:#disclosureControl"
	static let isolatedrbc = "#id:chkRBC | #title:Isolated RBC | #type:#check"
	static let rbccast = "#id:chkRBCcast | #title: RBC Cast| #type:#check"
	static let wbccast = "#id:chkWBCcast | #title: WBC Cast | #type:#check"
	static let granularcast = "#id:chkgranular | #title:Granular Cast | #type:#check"
	static let ovalcellbodies = "#id:chkoval | #title:Oval Cell Bodies | #type:#check"

	
	//
	// MARK: - Diagnostics https://zpl.io/ZcDQES
	//
	static let ekg = "#id:chkEKG | #title:EKG | #type:#disclosureControl"
	static let stressTesting = "#id:chkDTS | #title:Stress Testing | #type:#disclosureControl"
	static let echocardiography = "#id:chkEcho | #title:Echocardiography | #type:#disclosureControl"
	static let rhc = "#id:chkHC | #title:RHC | #type:#disclosureControl | #alert: Refer to Heart Failure Specialist for Management"
	
	// Diagnostics -> EKG
	static let nsrInEKG = "#id:chkNSR| #title: Normal sinus rhtym| #type:#check"
	static let svt = "#id:chkPSVT| #title:SVT | #type:#check"
	static let atrialFibrillationInEKG = "#id:chkatrialfib | #title:Atrial Fibrillation | #type:#check"
	static let atrialFlutter = "#id:chkflutter | #title:Atrial Flutter | #type:#disclosureControlExpandable"
	static let prDuration  = "#id:txtPRduration | #title:PR Duration |#type:#integerRight | #min:0 | #max:10000 | #placeholder: Value"
	static let qrsDuration = "#id:txtQRS | #title:QRS Duration |#type:#integerRight | #min:0 | #max:10000 | #placeholder: Value"
	static let nonspecificSTAbnormality = "#id:chknonspesific | #title:Nonspecific ST Abnormality | #type:#check"
	static let stDeviation05mm = "#id:chkST| #title:ST Deviation ≥ 0.5mm | #type:#check"
	static let tWaveInversion1mm = "#id:chkTWI | #title:T Wave Inversion > 1mm | #type:#check"
	static let lvh = "#id:chkLVH| #title:LVH | #type:#check"
	static let lowVoltageQRS = "#id:chklowv | #title:Low Voltage QRS | #type:#check"
	static let abnormalQWaves = "#id:chkabnormq| #title:Abnormal Q Waves | #type:#check"
	static let lbbb = "#id:chkLBBB | #title:LBBB | #type:#check"
	static let bifascicular = "#id:chkbifascicular | #title:Bifascicular | #type:#check"
	static let lahb = "#id:chkLAHB | #title:LAHB | #type:#check"
	static let lphb = "#id:chkLPHB | #title:LPHB | #type:#check"
	static let wpw = "#id:chkWPW | #title:WPW | #type:#check"
	static let vpace = "#id:chkVpace | #title:Ventricular Pacing | #type:#check"
	static let rbbb = "#id:chkRBBB | #title:RBBB | #type:#check"
	static let intraventicularBlock = "#id:chkIVCD| #title:Intraventicular Block | #type:#check"
	static let atrialPrematureDepolarization = "#id:chkAPCs | #title:Atrial Premature Depolarization | #type:#check"
	static let junctionalPrematureDepolarization = "#id:chkJPDs | #title:Junctional Premature Depolarization | #type:#check"
	static let frequentVentricularPacingOrEctopy = "#id:chkFreqVentPac | #title:Frequent Ventricular Pacing or Ectopy | #type:#check"
	static let infrequentVentricularPacingOrEctopy = "#id:chkinfreqvent  | #title:Infrequent Ventricular Pacing or Ectopy | #type:#check"
	static let firstDegreeAVBlock = "#id:chkfirstdegree | #title:1st Degree AV Block | #type:#check"
	static let secondDegreeAVBlock = "#id:chksecondegree | #title:2nd Degree AV Block | #type:#disclosureControlExpandable"
	static let thirdDegreeAVBlock = "#id:chkthirdegree | #title:3rd Degree AV Block | #type:#check"
	
	static let urineNaMeqlInEKG = "#id:urineNaMeqlInEKG | #title:Urine Na meq/l |#type:#integerRight | #min:1 | #max:200 | #placeholder: Value"
	static let serumOsmolalityInEKG = "#id:serumOsmolalityInEKG | #title:Serum Osmolality |#type:#integerRight | #min:200 | #max:400 | #placeholder: Value"
	static let stressTestingInEKG = "#id:stressTestingInEKG | #title:Stress Testing | #type:#check"
	
	// Diagnostics -> EKG -> Atrial Flutter https://zpl.io/Zcjvv8
	static let typicalAF = "#id:chktypicalAF | #title:Typical AF | #type:#check"
	static let atypicalAF = "#id:chkatypicalAF | #title:Atypical AF | #type:#check"
	
	// Diagnostics -> EKG -> 2nd Degree AV Block https://zpl.io/Z1s6jIT
	static let type1 = "#id:chktype1 | #title:Type 1 | #type:#check"
	static let type2 = "#id:chktype2 | #title:Type 2 | #type:#check"
	
	// Diagnostics -> Stress Testing https://zpl.io/Z21VSc7
	static let dukeTreadmillScore = "#id:TxtTTS | #title:Duke Treadmill Score |#type:#integerRight | #min:0 | #max:9999 | #placeholder: Value"
	static let serumStressSummedScore = "#id:txtStressSummedScore | #title:Serum Stress Summed Score |#type:#integerRight | #min:0 | #max:99 | #placeholder: Value"
	static let stressDifferenceScore = "#id:txtreversible | #title:Stress Difference Score |#type:#integerRight | #min:0 | #max:99 | #placeholder: Value"
	static let percentIschemicMyocardiumonMPS = "#id:txtMPS | #title:% Ischemic Myocardium on MPS |#type:#integerRight | #min:0 | #max:100 | #placeholder: Value"
	static let tidOrSignificantDysfunction = "#id:chkTID | #title:TID or Significant Stress-Induced LV Dysfunction | #type:#check"
	static let exTimeMin = "#id:txtExTimeMin | #title:Ex Time (min) |#type:#integerRight | #min:1 | #max:21 | #placeholder: Value"
	static let maxSTMm = "#id:txtMaxST | #title:Max ST (mm) |#type:#integerRight | #min:0 | #max:8 | #placeholder: Value"
	static let anginaIndex = "#id:rbAnginaIndex | #title:Angina Index |#type:#disclosureControl | #min:0 | #max:2 | #placeholder: "
	static let stElevation = "#id:chkSTelevation | #title:ST Elevation | #type:#check"
	static let abnormalBPResponse = "#id:chkabnormalBP | #title:Abnormal BP Response | #type:#check"
	static let ventricularTachycardia = "#id:chkExVT | #title:Ventricular Tachycardia | #type:#check"
	static let prolongSTDepression = "#id:chkprolongedST | #title:Prolonged ST Depression | #type:#check"
	static let fixedPerfusionDefects = "#id:chkfixed  | #title:Fixed Perfusion Defects or Akinetic/Dyskinetic WMA on DSE | #type:#disclosureControlExpandable"
	static let dseIschemicThreshold = "#id:txtDSE | #title:DSE Ischemic Threshold, %MPHR at the Onset of Ischemia |#type:#integerRight | #min:0 | #max:200 | #placeholder: Value"
	static let dseOrStressMRI = "#id:txtWMA | #title:DSE or Stress MRI, Number of Segments with new WMA |#type:#integerRight | #min:0 | #max:24 | #placeholder: Value"
	static let artifactualUninterpretableImages = "#id:chkuninterpret | #title:Artifactual/Uninterpretable Images | #type:#check"
	
	// Diagnostics -> Stress Testing -> Angina Index
	static let noAnginaDuringExercise = "#id:secno_angina_during_exercise| #title:No Angina During Exercise | #type:#radio | #group: (noAnginaDuringExercise, nonLimitingAngina, exerciseLimitingAngina)"
	static let nonLimitingAngina = "#id:secnon_limiting_angina | #title:Non-Limiting Angina | #type:#radio | #group: (noAnginaDuringExercise, nonLimitingAngina, exerciseLimitingAngina)"
	static let exerciseLimitingAngina = "#id:secexercise_limiting_angina | #title:Exercise Limiting Angina | #type:#radio | #group: (noAnginaDuringExercise, nonLimitingAngina, exerciseLimitingAngina)"
	
	// Diagnostics -> Stress Testing -> Fixed Perfusion Defects or Akinetic/Dyskinetic WMA on DSE
	static let viabilityPresent = "#id:chkviable | #title:Viability Present | #type:#check"
	
	// Diagnostics -> Echocardiography
	static let pericardialEffusion = "#id:chkpericardial | #title:Pericardial Effusion | #type:#check"
	static let rwma = "#id:chkRWMA | #title:RWMA | #type:#check"
	static let enlargedLAOrLVH = "#id:chkEnlargedLA | #title:Enlarged LA or LVH | #type:#check"
	static let ea05AndDTMore280ms = "#id:chkLVeccenticity | #title:E/A < 0.5 and DT > 280ms | #type:#check"
	static let gradeMore2DiastolicDysfunction = "#id:chkMPI | #title:Grade ≥ 2 Diastolic Dysfunction | #type:#check"
	static let respiratoryIVSShift = "#id:chkIVSshift | #title:Respiratory IVS Shift | #type:#check"
	static let mitralEVariation = "#id:chkmitralE | #title:Mitral E Variation | #type:#check"
	static let hepaticVeinExpDiastolicReversal = "#id:chkhepatic | #title:Hepatic Vein Exp Diastolic Reversal | #type:#check"
	static let enlargedRA = "#id:chkEnlargedRA | #title:Enlarged RA | #type:#check"
	static let enlargedRV = "#id:chkEnlargedRV | #title:Enlarged RV | #type:#check"
	static let midsystolicNotch = "#id:chkmidsystolicn | #title:Midsystolic Notch | #type:#check"
	static let lvLaterealAnnulusEE = "#id:txtMP | #title:LV Latereal Annulus E/E' |#type:#integerRight | #min:1 | #max:30 | #placeholder: Value"
	static let lvefInEchocardiography = "#id:txtEF | #title:LVEF |#type:#integerRight | #min:10 | #max:80 | #placeholder: Value"
	static let trjVelocityMsec = "#id:txtTRJ | #title:TRJ Velocity m/sec |#type:#integerRight | #min:1 | #max:6 | #placeholder: Value"
	
	
	//
	// MARK: - Heart Specialist Management
	//
	static let bioPAHMain = "#id:bioPAHMain | #title:Bio/PAH Main | #type:#disclosureWeather"
	static let pah = "#id:pah | #title:PAH | #type:#disclosureWeather"
	static let valvularInHSM = "#id:valvularInHSM | #title:Valvular | #type:#disclosureWeather"
	static let advancedLHF = "#id:advancedLHF | #title:Advanced LHF | #type:#disclosureWeather"
	static let echocardiographyInHSM = "#id:echocardiographyInHSM | #title:Echocardiography | #type:#disclosureWeather"
	static let laboratoryEKG = "#id:laboratoryEKG | #title:Laboratory/EKG | #type:#disclosureWeather"
	static let rhcInHSM = "#id:rhcInHSM | #title:RHC | #type:#disclosureWeather"
	
	static let pah1 = "#id:pah1 | #title:Page 1 | #type:#segment"
	static let pah2 = "#id:pah2 | #title:Page 2 | #type:#segment"
	static let pah3 = "#id:pah3 | #title:Page 3 | #type:#segment"

}
