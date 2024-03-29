//
//  MockHomeViewController.swift
//  HomeModuleTests
//
//  Created by Yasin Akbas on 18.07.2022.
//  Copyright © 2022 com.yasinkbas.HomeModule. All rights reserved.
//

import XCTest
@testable import HomeModule
import MapKit
import MapViewKit

final class MockHomeViewController: HomeViewInterface {

    var invokedPrepareUI = false
    var invokedPrepareUICount = 0

    func prepareUI() {
        invokedPrepareUI = true
        invokedPrepareUICount += 1
    }

    var invokedPrepareNavigationView = false
    var invokedPrepareNavigationViewCount = 0
    var invokedPrepareNavigationViewParameters: (delegate: HomeNavigationViewPresenterDelegate, Void)?
    var invokedPrepareNavigationViewParametersList = [(delegate: HomeNavigationViewPresenterDelegate, Void)]()
    var stubbedPrepareNavigationViewResult: HomeNavigationViewPresenterInterface!

    func prepareNavigationView(delegate: HomeNavigationViewPresenterDelegate) -> HomeNavigationViewPresenterInterface {
        invokedPrepareNavigationView = true
        invokedPrepareNavigationViewCount += 1
        invokedPrepareNavigationViewParameters = (delegate, ())
        invokedPrepareNavigationViewParametersList.append((delegate, ()))
        return stubbedPrepareNavigationViewResult
    }

    var invokedPrepareMapView = false
    var invokedPrepareMapViewCount = 0
    var stubbedPrepareMapViewResult: MapViewPresenterInterface!

    func prepareMapView() -> MapViewPresenterInterface {
        invokedPrepareMapView = true
        invokedPrepareMapViewCount += 1
        return stubbedPrepareMapViewResult
    }

    var invokedPrepareHistoryView = false
    var invokedPrepareHistoryViewCount = 0
    var invokedPrepareHistoryViewParameters: (delegate: HomeHistoryPresenterDelegate, Void)?
    var invokedPrepareHistoryViewParametersList = [(delegate: HomeHistoryPresenterDelegate, Void)]()
    var stubbedPrepareHistoryViewResult: HomeHistoryPresenterInterface!

    func prepareHistoryView(delegate: HomeHistoryPresenterDelegate) -> HomeHistoryPresenterInterface {
        invokedPrepareHistoryView = true
        invokedPrepareHistoryViewCount += 1
        invokedPrepareHistoryViewParameters = (delegate, ())
        invokedPrepareHistoryViewParametersList.append((delegate, ()))
        return stubbedPrepareHistoryViewResult
    }

    var invokedAddAnnotation = false
    var invokedAddAnnotationCount = 0
    var invokedAddAnnotationParameters: (annotation: MKPointAnnotation, Void)?
    var invokedAddAnnotationParametersList = [(annotation: MKPointAnnotation, Void)]()

    func addAnnotation(_ annotation: MKPointAnnotation) {
        invokedAddAnnotation = true
        invokedAddAnnotationCount += 1
        invokedAddAnnotationParameters = (annotation, ())
        invokedAddAnnotationParametersList.append((annotation, ()))
    }

    var invokedRemoveAllAnnotations = false
    var invokedRemoveAllAnnotationsCount = 0

    func removeAllAnnotations() {
        invokedRemoveAllAnnotations = true
        invokedRemoveAllAnnotationsCount += 1
    }

    var invokedFitMapAnnotations = false
    var invokedFitMapAnnotationsCount = 0

    func fitMapAnnotations() {
        invokedFitMapAnnotations = true
        invokedFitMapAnnotationsCount += 1
    }

    var invokedShowHistoryView = false
    var invokedShowHistoryViewCount = 0

    func showHistoryView() {
        invokedShowHistoryView = true
        invokedShowHistoryViewCount += 1
    }

    var invokedHideHistoryView = false
    var invokedHideHistoryViewCount = 0

    func hideHistoryView() {
        invokedHideHistoryView = true
        invokedHideHistoryViewCount += 1
    }

    var invokedHideKeyboard = false
    var invokedHideKeyboardCount = 0

    func hideKeyboard() {
        invokedHideKeyboard = true
        invokedHideKeyboardCount += 1
    }

    var invokedShowLoading = false
    var invokedShowLoadingCount = 0

    func showLoading() {
        invokedShowLoading = true
        invokedShowLoadingCount += 1
    }

    var invokedHideLoading = false
    var invokedHideLoadingCount = 0

    func hideLoading() {
        invokedHideLoading = true
        invokedHideLoadingCount += 1
    }

    var invokedShowAlert = false
    var invokedShowAlertCount = 0
    var invokedShowAlertParameters: (message: String, Void)?
    var invokedShowAlertParametersList = [(message: String, Void)]()

    func showAlert(message: String) {
        invokedShowAlert = true
        invokedShowAlertCount += 1
        invokedShowAlertParameters = (message, ())
        invokedShowAlertParametersList.append((message, ()))
    }
}
