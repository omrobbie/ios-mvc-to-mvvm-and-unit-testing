//
//  CourseViewModel.swift
//  MVC to MVVM
//
//  Created by omrobbie on 08/07/20.
//  Copyright © 2020 omrobbie. All rights reserved.
//

import UIKit

struct CourseViewModel {

    let name: String
    let detailTextString: String
    let accessoryType: UITableViewCell.AccessoryType

    // Depedency Injection
    init(course: Course) {
        self.name = course.name

        if course.number_of_lessons > 35 {
            detailTextString = "Lesson 30+ Check it Out!"
            accessoryType = .detailDisclosureButton
        } else {
            detailTextString = "Lesson \(course.number_of_lessons)"
            accessoryType = .none
        }
    }
}
