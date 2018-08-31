//
//  ExercisesTableViewController.swift
//  DesignCodeApp
//
//  Created by Tiago Mergulhão on 02/02/18.
//  Copyright © 2018 Meng To. All rights reserved.
//

import UIKit

class ExercisesTableViewController: UITableViewController {

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        performSegue(withIdentifier: "Present Exercise Dialog", sender: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return exercises.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Exercise Cell", for: indexPath) as! ExerciseTableViewCell

        cell.questions = Array(exercises.values)[indexPath.row]

        return cell
    }
}
