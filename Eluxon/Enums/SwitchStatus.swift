import Foundation
import UIKit

enum SwitchStatus: Togglable {
    case on
    case off
    
    mutating func toggle() {
        // self means whatever instance of status we use
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
}
