import Foundation
import UIKit

class MVPConfigurator: NSObject {
    
    @IBOutlet weak var viewController: UIViewController!
    
    override func awakeFromNib() {
        configurate()
    }
    
    private func configurate(){
        
        guard let mvpViewController = viewController as? MVPViewController else { return }
        
        // Init
        let dataManager = DataManagerImpl()
        let mvpPresenter = MVPPresenter()
    
        // Presenter
        mvpPresenter.view = mvpViewController
        mvpPresenter.dataManager = dataManager
        
        // ViewController
        mvpViewController.presenter = mvpPresenter
    }
}
