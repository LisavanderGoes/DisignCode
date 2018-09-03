//
//  QuestionCollectionViewCell.swift
//  DesignCodeApp
//
//  Created by WebIQ Stagiaire on 31-08-18.
//  Copyright © 2018 Meng To. All rights reserved.
//

import UIKit

protocol QuestionCellDelegate : class {
    func questionCell(_ cell : QuestionCollectionViewCell, didTapAnswerButton button : UIButton, forQuestion question : Dictionary<String,Any>)
}

class QuestionCollectionViewCell: UICollectionViewCell {
    var question : Dictionary<String,Any>!
    weak var delegate : QuestionCellDelegate?
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerButtons: [UIButton]!
    @IBAction func didTapQuestionButton(_ sender: UIButton){
       
        delegate?.questionCell(self, didTapAnswerButton: sender, forQuestion: question)
        
        sender.setImage(UIImage(named:"Exercises-Check"), for: .normal)
    }
}
