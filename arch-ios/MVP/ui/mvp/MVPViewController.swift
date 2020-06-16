import UIKit

class MVPViewController: UIViewController, MVPViewInput {
    
    @IBOutlet weak var mvpLabel: UILabel!
    
    var presenter: MVPViewOutput!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.initState()
    }
    
    func showName(name: String?) {
        mvpLabel.text = name ?? ""
    }
    
    // MARK: - Actions
    
    @IBAction func actionPressChangeLabelButton(_ sender: UIButton) {
        presenter.didPressChangeLabelButton()
    }
}
