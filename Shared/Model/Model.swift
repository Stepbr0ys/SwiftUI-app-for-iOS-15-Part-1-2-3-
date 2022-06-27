//
//  Model.swift
//  Begining
//
//  Created by Борис Ларионов on 17.01.2022.
//

import SwiftUI
import Combine

class Model: ObservableObject {
    @Published var showDetail: Bool = false
    @Published var selectedModal: Modal = .signIN
}

enum Modal: String {
    case signUP
    case signIN
}
