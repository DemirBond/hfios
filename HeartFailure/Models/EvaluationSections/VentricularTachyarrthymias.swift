//
//  VentricularTachyarrthymias.swift
//  HeartFailure
//
//  Created by Davis Chan on 9/16/17.
//  Copyright © 2017 IgorKhomiak. All rights reserved.
//

import UIKit


// MARK: - Ventricular Tachyarrthymias

class VentricularTachyarrthymias: EvaluationItem {
	
	let nsvt = EvaluationItem(literal: Presentation.nsvt)
	let monomorphicVT = EvaluationItem(literal: Presentation.monomorphicVT)
	let repetitiveMonomorphicVT = EvaluationItem(literal: Presentation.repetitiveMonomorphicVT)
	let polymorphicVT = EvaluationItem(literal: Presentation.polymorphicVT)
	let torsades = EvaluationItem(literal: Presentation.torsades)
	let incessantVT = EvaluationItem(literal: Presentation.incessantVT)
	let idiopathicVT = EvaluationItem(literal: Presentation.idiopathicVT)
	
	override var items: [EvaluationItem] {
		return [
			nsvt,
			monomorphicVT,
			repetitiveMonomorphicVT,
			polymorphicVT,
			torsades,
			incessantVT,
			idiopathicVT
		]
	}
}

