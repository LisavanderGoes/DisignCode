//
//  ExerciseTableViewCell.swift
//  DesignCodeApp
//
//  Created by Tiago Mergulhão on 02/02/18.
//  Copyright © 2018 Meng To. All rights reserved.
//

import UIKit

class ExerciseTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!

    var questions : Array<Dictionary<String,Any>>!

    override func awakeFromNib() {
        super.awakeFromNib()

        collectionView.dataSource = self
        collectionView.reloadData()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension ExerciseTableViewCell : UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return questions.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Question Cell", for: indexPath) as UICollectionViewCell

        return cell
    }
}
