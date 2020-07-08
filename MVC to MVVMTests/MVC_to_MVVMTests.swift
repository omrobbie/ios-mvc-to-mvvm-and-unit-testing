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
        let course = Course(id: 0, name: "Learn with omrobbie", number_of_lessons: 10)
        let courseViewModel = CourseViewModel(course: course)

        XCTAssertEqual(courseViewModel.name, course.name)
        XCTAssertEqual(courseViewModel.detailTextString, "Lesson \(course.number_of_lessons)")
        XCTAssertEqual(courseViewModel.accessoryType, UITableViewCell.AccessoryType.none)
    }

    func testCourseViewModelLessonOverThreshold() {
        let course = Course(id: 0, name: "Learn with omrobbie", number_of_lessons: 100)
        let courseViewModel = CourseViewModel(course: course)

        XCTAssertEqual(courseViewModel.name, course.name)
        XCTAssertEqual(courseViewModel.detailTextString, "Lesson 30+ Check it Out!")
        XCTAssertEqual(courseViewModel.accessoryType, UITableViewCell.AccessoryType.detailDisclosureButton)
    }
}
