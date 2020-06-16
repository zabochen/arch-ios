import Foundation

class MVPPresenter: MVPViewOutput {
    
    var dataManager: DataManager!
    weak var view: MVPViewInput!
    
    func initState() {
        print("MVPPresenter: initState()")
    }
    
    func didPressChangeLabelButton() {
        let randomName = dataManager.fetchNameList().randomElement()
        view.showName(name: randomName)
    }
}
