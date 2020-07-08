//
//  CourseCell.swift
//  MVC to MVVM
//
//  Created by omrobbie on 08/07/20.
//  Copyright © 2020 omrobbie. All rights reserved.
//

import UIKit

class CourseCell: UITableViewCell {

    var course: Course! {
        didSet {
            textLabel?.text = course.name

            if course.number_of_lessons > 35 {
                accessoryType = .detailDisclosureButton
                detailTextLabel?.text = "Lesson 30+ Check it Out!"
            } else {
                detailTextLabel?.text = "Lesson \(course.number_of_lessons)"
                accessoryType = .none
            }
        }
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)

        textLabel?.font = UIFont.boldSystemFont(ofSize: 24)
        textLabel?.numberOfLines = 0
        detailTextLabel?.textColor = .black
        detailTextLabel?.font = UIFont.systemFont(ofSize: 20, weight: .light)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
