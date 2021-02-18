import Foundation

struct SectionPlainObject {
    let id: Int
    let courseID: Int
    let unitsIDs: [Int]
    let units: [UnitPlainObject]
    let position: Int
    let discountingPolicy: DiscountingPolicy
    let progressID: String?
    let progress: ProgressPlainObject?
    let testSectionAction: String?
    let title: String
    let beginDate: Date?
    let endDate: Date?
    let softDeadline: Date?
    let hardDeadline: Date?
    let isActive: Bool
    let isExam: Bool
    let isRequirementSatisfied: Bool
    let requiredSectionID: Int?
    let requiredPercent: Int
    let isReachable: Bool
}

extension SectionPlainObject {
    init(section: Section) {
        self.id = section.id
        self.courseID = section.courseId
        self.unitsIDs = section.unitsArray
        self.units = section.units.map(UnitPlainObject.init)
        self.position = section.position
        self.discountingPolicy = section.discountingPolicyType
        self.progressID = section.progressId

        if let progressEntity = section.progress {
            self.progress = ProgressPlainObject(progress: progressEntity)
        } else {
            self.progress = nil
        }

        self.testSectionAction = section.testSectionAction
        self.title = section.title
        self.beginDate = section.beginDate
        self.endDate = section.endDate
        self.softDeadline = section.softDeadline
        self.hardDeadline = section.hardDeadline
        self.isActive = section.isActive
        self.isExam = section.isExam
        self.isRequirementSatisfied = section.isRequirementSatisfied
        self.requiredSectionID = section.requiredSectionID
        self.requiredPercent = section.requiredPercent
        self.isReachable = section.isReachable
    }
}