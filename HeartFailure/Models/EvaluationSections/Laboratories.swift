//
//  Laboratories.swift
//  CVDEvaluator
//
//  Created by bogdankosh on 2/9/17.
//  Copyright © 2017 IgorKhomiak. All rights reserved.
//

import Foundation


// MARK: - Laboratories

class Laboratories: EvaluationItem {
	
	let chemBasicLabel = EvaluationItem(literal: Presentation.chemBasicLabel)
	let nameqlValue = EvaluationItem(literal: Presentation.nameqlValue)
	let kmeql = EvaluationItem(literal: Presentation.kmeql)
	let creatinineMgDl = EvaluationItem(literal: Presentation.creatinineMgDl)
	let bunMgDl = EvaluationItem(literal: Presentation.bunMgDl)
	let hco3 = EvaluationItem(literal: Presentation.hco3)
	let fastingPlasmaGlucose = EvaluationItem(literal: Presentation.fastingPlasmaGlucose)
	let gfrMlMin173M2 = EvaluationItem(literal: Presentation.gfrMlMin173M2)
	let worseningRenalFx = EvaluationItem(literal: Presentation.worseningRenalFx)
	
	let othersLabel = EvaluationItem(literal: Presentation.othersLabel)
	let hba1c = EvaluationItem(literal: Presentation.hba1c)
	let albumin = EvaluationItem(literal: Presentation.albumin)
	let inr = EvaluationItem(literal: Presentation.inr)
	let ast = EvaluationItem(literal: Presentation.ast)
	let bilirubin = EvaluationItem(literal: Presentation.bilirubin)
	let hematocrit = EvaluationItem(literal: Presentation.hematocrit)
	let platelet = EvaluationItem(literal: Presentation.platelet)
	let ntProBNPPgMl = EvaluationItem(literal: Presentation.ntProBNPPgMl)
	let bnpPgMl = EvaluationItem(literal: Presentation.bnpPgMl)
	let albuminuriaMgGmOrMg24hr = EvaluationItem(literal: Presentation.albuminuriaMgGmOrMg24hr)
	
	override var items: [EvaluationItem] {
		return [
			chemBasicLabel,
			nameqlValue,
			kmeql,
			creatinineMgDl,
			bunMgDl,
			hco3,
			fastingPlasmaGlucose,
			gfrMlMin173M2,
			worseningRenalFx,
						
			othersLabel,
			hba1c,
			albumin,
			inr,
			ast,
			bilirubin,
			hematocrit,
			platelet,
			ntProBNPPgMl,
			bnpPgMl,
			albuminuriaMgGmOrMg24hr,
		]
	}
}


// MARK: - Laboratories -> Nameql

class Nameql: EvaluationItem {
	
	let urineNaMeql = EvaluationItem(literal: Presentation.urineNaMeql)
	let serumOsmolality = EvaluationItem(literal: Presentation.serumOsmolality)
	let urineOsmolality = EvaluationItem(literal: Presentation.urineOsmolality)
	
	override var items: [EvaluationItem] {
		return [
			urineNaMeql,
			serumOsmolality,
			urineOsmolality
		]
	}
}


// MARK: - Laboratories -> Abnormal Urin Sediment

class AbnormalUrinSediment: EvaluationItem {
	
	let isolatedrbc = EvaluationItem(literal: Presentation.isolatedrbc)
	let rbccast = EvaluationItem(literal: Presentation.rbccast)
	let wbccast = EvaluationItem(literal: Presentation.wbccast)
	let granularcast = EvaluationItem(literal: Presentation.granularcast)
	let ovalcellbodies = EvaluationItem(literal: Presentation.ovalcellbodies)
	
	override var items: [EvaluationItem] {
		return [
			isolatedrbc,
			rbccast,
			wbccast,
			granularcast,
			ovalcellbodies
		]
	}
}
