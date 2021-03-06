//
//  ResumeObject.swift
//  ResumeCreater
//
//  Created by Thinnaphat Ch on 14/2/2565 BE.
//

import Foundation
import RealmSwift

class ResumeStore: Object {
    @objc dynamic var _id: String = UUID().uuidString
    @objc dynamic var firstname: String?
    @objc dynamic var lastname: String?
    @objc dynamic var objective: String?
    @objc dynamic var picture: String?
    @objc dynamic var email: String?
    @objc dynamic var phone: String?
    @objc dynamic var address: String?
    dynamic var totalYearsExperience: Int?
    var skill = List<String>()
    var education = List<EducationStore>()
    var works = List<WorkStore>()
    var projects = List<ProjectStore>()
    @objc dynamic var created: Date = Date()
    
    override class func primaryKey() -> String? {
        return "_id"
    }
}

class EducationStore: Object {
    @objc dynamic var className: String?
    @objc dynamic var passingYear: String?
    @objc dynamic var gpa: String?
}

class WorkStore: Object {
    @objc dynamic var companyName: String?
    @objc dynamic var duration: DurationStore?
}

class ProjectStore: Object {
    @objc dynamic var projectName: String?
    dynamic var teamSize: Int?
    @objc dynamic var summary: String?
    @objc dynamic var technology: String?
    @objc dynamic var role: String?
    @objc dynamic var createdDate: Date = Date()
}

class DurationStore: Object {
    @objc dynamic var start: Date?
    @objc dynamic var end: Date?
}
