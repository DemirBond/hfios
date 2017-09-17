//
//  BradyarrthymiaSyncope.swift
//  HeartFailure
//
//  Created by Davis Chan on 9/16/17.
//  Copyright © 2017 IgorKhomiak. All rights reserved.
//

import UIKit

// MARK: - Bradyarrthymia/Syncope

class BradyarrthymiaSyncope: EvaluationItem {
	
	let clinicalSynscope = ThromboembolicPrevention(literal: Presentation.clinicalSynscopeBradyarrthymia)
	let symptomaticSinusNodeDysfunction = EvaluationItem(literal: Presentation.symptomaticSinusNodeDysfunction)
	let highGradeAVNodeDisease = EvaluationItem(literal: Presentation.highGradeAVNodeDisease)
	let isolatedNeurocardionegicUnexplainedSyncope = EvaluationItem(literal: Presentation.isolatedNeurocardionegicUnexplainedSyncope)
	let carotidSinusHypersensitivity = EvaluationItem(literal: Presentation.carotidSinusHypersensitivity)
	let pots = EvaluationItem(literal: Presentation.pots)
	let autonomicFailureSyndrome = EvaluationItem(literal: Presentation.autonomicFailureSyndrome)
	let historyOfCardiacArrest = EvaluationItem(literal: Presentation.historyOfCardiacArrest)
	let brugadaSyndrome = EvaluationItem(literal: Presentation.brugadaSyndrome)
	let longQT = EvaluationItem(literal: Presentation.longQT)
	let sarcoidosisGiantCellChagas = EvaluationItem(literal: Presentation.sarcoidosisGiantCellChagas)
	
	override var items: [EvaluationItem] {
		return [
			symptomaticSinusNodeDysfunction,
			highGradeAVNodeDisease,
			isolatedNeurocardionegicUnexplainedSyncope,
			carotidSinusHypersensitivity,
			pots,
			autonomicFailureSyndrome,
			historyOfCardiacArrest,
			brugadaSyndrome,
			longQT,
			sarcoidosisGiantCellChagas
		]
	}
}


// MARK: - Bradyarrthymia/Syncope -> ThromboembolicPrevention

class ThromboembolicPrevention: EvaluationItem {
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
