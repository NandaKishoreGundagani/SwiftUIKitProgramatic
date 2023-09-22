import UIKit

extension UIView {
    func addBackgroundImage(named imageName: String) {
        if let backgroundImage = UIImage(named: imageName) {
            let backgroundImageView = UIImageView(image: backgroundImage)
            backgroundImageView.frame = bounds
            backgroundImageView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            addSubview(backgroundImageView)
            sendSubviewToBack(backgroundImageView)
        }
    }
}
