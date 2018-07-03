//
//  Output.swift
//  CVDEvaluator
//
//  Created by bogdankosh on 3/1/17.
//  Copyright © 2017 IgorKhomiak. All rights reserved.
//

import UIKit

class Output: EvaluationItem {
	let outputCell = EvaluationItem(literal: OutputPresentation.outputSampleCell)
	let resultOutput = EvaluationItem(literal: OutputPresentation.resultOutputCaution)
	
	// PHILLIPS edit. added assesment
	let assessmentResult = EvaluationItem(literal: OutputPresentation.assessmentOutput)
	
	let diagnosticsResult = EvaluationItem(literal: OutputPresentation.diagnosticsResult)
	let therapeuticsResult =  EvaluationItem(literal: OutputPresentation.therapeuticsResult)
	let icd10Result = EvaluationItem(literal: OutputPresentation.icd10Result)
	let references = EvaluationItem(literal: OutputPresentation.references)
	let partnerCard = EvaluationItem(literal: OutputPresentation.piedmostPartnerCard)
	
	var resultItems : [EvaluationItem] = []
	let seperator = EvaluationItem(literal: Presentation.separator)
	func setResultOutputs()->Void{
		
		var outputs: [String:Bool]
		 outputs = DataManager.manager.getResults()
		
		resultItems.append(partnerCard)
		
		for (_,_) in outputs {
			//PHILLIPS Fixme. Added assessment outputs
			if (outputs["Assessment"])! {
				self.resultItems.append(assessmentResult)
			}
			
			if(outputs["Diagnostics"])!{
				self.resultItems.append(diagnosticsResult)
			}
			if(outputs["Therapeutics"])!{
				self.resultItems.append(therapeuticsResult)
			}
			if(outputs["ICD"])!{
				self.resultItems.append(icd10Result)
			}
			if(outputs["References"])!{				
				self.resultItems.append(references)
			}
		}
		
	}
	
	// Add dynamic result sections for incoming JSON output
	
	override var items: [EvaluationItem] {

		
		return [
			//resultOutput,
			//partnerCard,
			//assessmentResult,
			seperator,
			diagnosticsResult,
			seperator,
			therapeuticsResult,
			seperator,
			icd10Result,
			seperator,
			references
		]
//		return resultItems
	}
}
