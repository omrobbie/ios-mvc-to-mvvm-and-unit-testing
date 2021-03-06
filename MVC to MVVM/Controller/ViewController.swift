//
//  ViewController.swift
//  MVC to MVVM
//
//  Created by omrobbie on 08/07/20.
//  Copyright © 2020 omrobbie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    private let cellId = "cell"
    private var courseViewModels = [CourseViewModel]()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupList()
        fetchData()
    }

    private func setupList() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CourseCell.self, forCellReuseIdentifier: cellId)
    }

    private func fetchData() {
        courseViewModels = dummyData.map({return CourseViewModel(course: $0)})
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return courseViewModels.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId) as! CourseCell
        cell.courseViewModel = courseViewModels[indexPath.row]
        return cell
    }
}
