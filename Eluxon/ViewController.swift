import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var onOffLabel: UILabel!
    @IBOutlet weak var toggleBtn: UIButton!
    
    var switchStatus: SwitchStatus = .off
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func toggleBtnWasPressed(_ sender: Any) {
        switchStatus.toggle()
        if switchStatus == .off {
            // set the image to the off one
            toggleBtn.setImage(UIImage(named: "offBtn")!, for: .normal)
            // set the backGround color
            view.backgroundColor = #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)
            // set the text inside the Label
            onOffLabel.text = "🌚 OFF 🌚"
            // set the color of the Text in the label
            onOffLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        } else {
            toggleBtn.setImage(UIImage(named: "onBtn")!, for: .normal)
            view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            onOffLabel.text = "🌝 ON 🌝"
            onOffLabel.textColor = #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)
        }
    }
}

