//
//  UpdateStore.swift
//  DesignCode
//
//  Created by ali rahal on 07/03/2024.
//

import SwiftUI
import Combine

class UpdateStore: ObservableObject {
    @Published var updates: [Update] = updateData
    
}
