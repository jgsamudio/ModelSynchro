//
//  VehicleApi.swift
//  TheWing
//
//  Created by Jonathan Samudio on 02/09/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

import Alamofire

/**
    Auto-Generated using ModelSynchro
*/

protocol VehicleApi {
    
    func getVehicleForPlate(searchVehicleRequest: SearchVehicleRequest,
			completion: @escaping (_ result: Result<Vehicle>))
    
    func getVehicleInfo(accountId: String,
			vehicleId: String,
			completion: @escaping (_ result: Result<Vehicle>))
    
    func updateVehicleInfo(accountId: String,
			vehicleId: String,
			updateVehicleRequest: UpdateVehicleRequest,
			completion: @escaping (_ result: Result<Vehicle>))
    
}