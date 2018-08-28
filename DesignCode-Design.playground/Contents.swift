//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        // ^⌘E
        let titleLabel = UILabel()
        titleLabel.frame = CGRect(x: 16, y: 16, width: 272, height: 38)
        titleLabel.text = "Learn Swift 4"
        titleLabel.textColor = .black
        titleLabel.font = UIFont.systemFont(ofSize: 32, weight: .semibold)
        titleLabel.textColor = .white
        
        let captionLabel = UILabel()
        captionLabel.frame = CGRect(x: 16, y: 204, width: 272, height: 40)
        captionLabel.text = "Design directly in Playground"
        captionLabel.textColor = .white
        
        let coverImageView = UIImageView()
        coverImageView.frame = CGRect(x: 0, y: 0, width: 300, height: 250)
        coverImageView.contentMode = .scaleAspectFill
        coverImageView.image = #imageLiteral(resourceName: "Cover.jpg")
        coverImageView.clipsToBounds = true
        coverImageView.layer.cornerRadius = 14
        
        let backgroundImangeView = UIImageView()
        backgroundImangeView.frame = CGRect(x: 0, y: 0, width: 375, height: 667)
        backgroundImangeView.image = #imageLiteral(resourceName: "Chapters Screen@2x.png")
        
        let cardView = UIView()
        cardView.frame = CGRect(x: 20, y: 255, width: 300, height: 250)
        cardView.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        cardView.layer.cornerRadius = 14
        cardView.layer.shadowOpacity = 0.25
        cardView.layer.shadowOffset = CGSize(width: 0, height: 10)
        
        view.addSubview(backgroundImangeView)
        view.addSubview(cardView)
        cardView.addSubview(coverImageView)
        cardView.addSubview(titleLabel)
        cardView.addSubview(captionLabel)
        self.view = view
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
