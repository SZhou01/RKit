//
//  ConsentDocument.swift
//  RKTest5
//
//  Created by Shally on 13/4/20.
//  Copyright © 2020 Shally. All rights reserved.
//

import Foundation
import ResearchKit

public var ConsentDocument: ORKConsentDocument{
    let consentDocument = ORKConsentDocument()
    consentDocument.title = "Example Consent"
    
    let consentSectionTypes: [ORKConsentSectionType] = [
    .overview,
    .dataGathering,
    .privacy,
    .dataUse,
    .timeCommitment,
    .studySurvey,
    .studyTasks,
    .withdrawing
    ]
    
    var consentSections: [ORKConsentSection] = consentSectionTypes.map {contentSectionType in
        let consentSection = ORKConsentSection(type: contentSectionType)
        consentSection.summary = "if you wish to complete this study.."
        consentSection.content = "in this study you will be asked to complete...."
        return consentSection
    }
    
    consentDocument.sections = consentSections
    
    consentDocument.addSignature(ORKConsentSignature(forPersonWithTitle: nil, dateFormatString: nil, identifier: "ConsentDocumentParticipantSignature"))
    
    return consentDocument
}
