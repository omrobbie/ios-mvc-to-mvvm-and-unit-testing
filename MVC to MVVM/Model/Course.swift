//
//  Course.swift
//  MVC to MVVM
//
//  Created by omrobbie on 08/07/20.
//  Copyright © 2020 omrobbie. All rights reserved.
//

import Foundation

struct Course: Decodable {

    let id: Int
    let name: String
    let number_of_lessons: Int
}

let dummyData: [Course] = [
    Course(id: 0, name: "Instagram Firebase", number_of_lessons: 40),
    Course(id: 1, name: "Podcast Course", number_of_lessons: 50),
    Course(id: 2, name: "Intermediate Training", number_of_lessons: 32),
    Course(id: 3, name: "Kindle Basic Training", number_of_lessons: 19)
]
