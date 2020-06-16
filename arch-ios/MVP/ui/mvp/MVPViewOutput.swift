import Foundation

protocol MVPViewOutput: AnyObject {
    func initState()
    func didPressChangeLabelButton()
}
