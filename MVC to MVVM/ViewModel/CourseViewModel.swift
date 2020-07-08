//
//  CourseViewModel.swift
//  MVC to MVVM
//
//  Created by omrobbie on 08/07/20.
//  Copyright © 2020 omrobbie. All rights reserved.
//

import Foundation

struct CourseViewModel {

    let name: String

    // Depedency Injection
    init(course: Course) {
        self.name = course.name
    }
}
