//
//  MVC_to_MVVMTests.swift
//  MVC to MVVMTests
//
//  Created by omrobbie on 08/07/20.
//  Copyright © 2020 omrobbie. All rights reserved.
//

import XCTest

@testable
import MVC_to_MVVM

class MVC_to_MVVMTests: XCTestCase {

    func testCourseViewModel() {
        let course = Course(id: 0, name: "Learn with omrobbie", number_of_lessons: 50)
        let courseViewModel = CourseViewModel(course: course)
    }
}
