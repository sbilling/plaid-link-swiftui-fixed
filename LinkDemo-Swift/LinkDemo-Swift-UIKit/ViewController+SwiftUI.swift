import UIKit
import SwiftUI

@available(iOS 13.0, *)
extension ViewController {
    func presentSwiftUILinkToken() {
        let configuration = createLinkTokenConfiguration()
        presentLink(with: .linkToken(configuration))
    }
    
    func presentSwiftUIPublicKey() {
        let configuration = createPublicKeyConfiguration()
        presentLink(with: .publicKey(configuration))
    }
    
    private func presentLink(with linkConfiguration: LinkController.LinkConfigurationType) {
        let contentView = LinkController(configuration: linkConfiguration) { error in
            print("Handle link creation error: \(error)!")
        }
        let vc = UIHostingController(rootView: contentView)
        present(vc, animated: true, completion: nil)
    }
}

