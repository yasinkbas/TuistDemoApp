//
//  MockHomeNavigationViewPresenterDelegate.swift
//  HomeModuleTests
//
//  Created by Yasin Akbas on 18.07.2022.
//  Copyright © 2022 com.yasinkbas.HomeModule. All rights reserved.
//

import Foundation
@testable import HomeModule

final class MockHomeNavigationViewPresenterDelegate: HomeNavigationViewPresenterDelegate {

    var invokedSearchButtonTapped = false
    var invokedSearchButtonTappedCount = 0
    var invokedSearchButtonTappedParameters: (searchText: String, Void)?
    var invokedSearchButtonTappedParametersList = [(searchText: String, Void)]()

    func searchButtonTapped(searchText: String) {
        invokedSearchButtonTapped = true
        invokedSearchButtonTappedCount += 1
        invokedSearchButtonTappedParameters = (searchText, ())
        invokedSearchButtonTappedParametersList.append((searchText, ()))
    }

    var invokedSearchBarShouldBeginEditing = false
    var invokedSearchBarShouldBeginEditingCount = 0

    func searchBarShouldBeginEditing() {
        invokedSearchBarShouldBeginEditing = true
        invokedSearchBarShouldBeginEditingCount += 1
    }

    var invokedSearchBar = false
    var invokedSearchBarCount = 0
    var invokedSearchBarParameters: (searchText: String, Void)?
    var invokedSearchBarParametersList = [(searchText: String, Void)]()

    func searchBar(textDidChange searchText: String) {
        invokedSearchBar = true
        invokedSearchBarCount += 1
        invokedSearchBarParameters = (searchText, ())
        invokedSearchBarParametersList.append((searchText, ()))
    }
}
