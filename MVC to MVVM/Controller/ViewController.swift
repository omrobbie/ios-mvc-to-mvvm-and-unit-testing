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
    private var courses = [Course]()

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
        courses = dummyData
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return courses.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId) as! CourseCell
        cell.course = courses[indexPath.row]
        return cell
    }
}
