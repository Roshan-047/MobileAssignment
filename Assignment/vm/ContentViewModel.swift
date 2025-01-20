//
//  ContentViewModel.swift
//  Assignment
//
//  Created by Kunal on 10/01/25.
//

import Foundation


class ContentViewModel : ObservableObject {
    
    private let apiService = ApiService()
    @Published var navigateDetail: DeviceData? = nil
    @Published var data: [DeviceData]? = []

    func fetchAPI() async{
        self.apiService.fetchDeviceDetails(completion: { item in
            DispatchQueue.main.async{
                self.data = item
                }
                print("Data from viewModel: \(self.data)")
            })
        
    }
    
    func navigateToDetail(navigateDetail: DeviceData) {
        self.navigateDetail = navigateDetail
    }
}
