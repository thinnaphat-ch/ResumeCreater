//
//  ResumeMainModels.swift
//  ResumeCreater
//
//  Created by Thinnaphat Ch on 13/2/2565 BE.
//  Copyright (c) 2565 BE ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

<<<<<<< HEAD
enum ResumeMain: String {
    case firstname
    case lastname
    case objective
    case picture
    case email
    case phone
    case address
    case totalYearsExperience
    case skill
    case education
    case works
    case projects
    
    
    struct Request {
        var profileImage: String?
        var firstname: String?
        var lastname: String?
        var objective: String?
        var phone: String?
        var email: String?
        var address: String?
        var skills: [String]?
        var works: [ResumeMain.ViewModel.WorkViewModel]?
        var education: [ResumeMain.ViewModel.EducationViewModel]?
        var projects: [ResumeMain.ViewModel.ProjectViewModel]?
    }
    
    struct Response {
        let resumeInfo: ResumeStore?
        var error: RSMError?
=======
enum ResumeMain {
    struct Request {
        
    }
    
    struct Response {
        let resumeInfo: ResumeStore
>>>>>>> a32b61646be03a0b07987d4d9d7901012e3ab112
    }
    
    struct ViewModel {
        var profileImage: UIImage?
        var firstname: String?
        var lastname: String?
        var objective: String?
        var phone: String?
        var email: String?
        var address: String?
        var skills: [String]?
        var works: [ResumeMain.ViewModel.WorkViewModel]?
        var education: [ResumeMain.ViewModel.EducationViewModel]?
        var projects: [ResumeMain.ViewModel.ProjectViewModel]?
<<<<<<< HEAD
        var errorMsg: String?
=======
>>>>>>> a32b61646be03a0b07987d4d9d7901012e3ab112
        
        init(_ profile: ResumeStore) {
            profileImage = UIImage(contentsOfFile: profile.picture ?? "")
            firstname = profile.firstname
            lastname = profile.lastname
            objective = profile.objective
            phone = profile.phone
            email = profile.email
            address = profile.address
            skills = profile.skill.map { $0 }
            works = profile.works.sorted{ $0.duration?.start ?? Date() < $1.duration?.start ?? Date() }.map { .init($0) }
<<<<<<< HEAD
            education = profile.education.sorted { Int($0.passingYear ?? "0") ?? 0 > Int($1.passingYear ?? "0") ?? 1 }.compactMap { .init($0) }
            projects = profile.projects.sorted { $0.createdDate > $1.createdDate }.compactMap { .init($0) }
        }
        
        init(_ error: String) {
            errorMsg = error
        }
        
=======
            education = profile.education.sorted { Int($0.passingYear ?? "0") > Int($1.passingYear ?? "0") }.compactMap { .init($0) }
            projects = profile.projects.sorted { $0.createdDate > $1.createdDate }.compactMap { .init($0) }
        }
        
>>>>>>> a32b61646be03a0b07987d4d9d7901012e3ab112
        struct WorkViewModel {
            var companyName: String?
            var duration: String?
            
            init(_ work: WorkStore) {
                companyName = work.companyName
                duration = (work.duration?.end?.toFormatString() ?? "") + " - " + (work.duration?.start?.toFormatString() ?? "")
            }
        }
        
        struct EducationViewModel {
            var className: String?
            var passingYear: String?
            var gpa: String?
            
            init(_ education: EducationStore) {
                className = education.className
                passingYear = education.passingYear
                gpa = education.gpa
            }
        }
        
        struct ProjectViewModel {
            var name: String?
            var teamSize: Int?
            var summary: String?
            var technology: String?
            var role: String?
            
            init(_ project: ProjectStore) {
<<<<<<< HEAD
                name = project.projectName
=======
                name = project.name
>>>>>>> a32b61646be03a0b07987d4d9d7901012e3ab112
                teamSize = project.teamSize
                summary = project.summary
                technology = project.technology
                role = project.role
            }
        }
    }
}

<<<<<<< HEAD

=======
extension Date {
    func toFormatString(_ format: String? = "MMM yyyy") -> String {
        let dateFormatter =  DateFormatter()
        dateFormatter.dateFormat = format
        dateFormatter.calendar = Calendar(identifier: .gregorian)
        return dateFormatter.string(from: self)
    }
}
>>>>>>> a32b61646be03a0b07987d4d9d7901012e3ab112
