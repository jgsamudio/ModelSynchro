//
//  VehicleApi.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 02/09/19.
//  Copyright © 2019 JustBinary. All rights reserved.
//

import Alamofire

/**
    Auto-Generated using ModelSynchro
*/

protocol VehicleApi {
    
    func addVehicle(accountId: String,
			addVehicleRequest: Addvehiclerequest,
			completion: @escaping (_ result: Result<[Vehicle]>) -> Void)
    
    func deleteVehicleInfo(accountId: String,
			vehicleId: String,
			completion: @escaping (_ result: Result<Vehicle>) -> Void)
    
    func getAllVehicleColors(completion: @escaping (_ result: Result<[VehicleColor]>) -> Void)
    
    func getAllVehicleMakes(completion: @escaping (_ result: Result<Make>) -> Void)
    
    func getAllVehicleModels(makeId: String,
			completion: @escaping (_ result: Result<[Model]>) -> Void)
    
    func getAllVehicles(accountId: String,
			completion: @escaping (_ result: Result<[Vehicle]>) -> Void)
    
    func getVehicleForPlate(searchVehicleRequest: Searchvehiclerequest,
			completion: @escaping (_ result: Result<Vehicle>) -> Void)
    
    func getVehicleInfo(accountId: String,
			vehicleId: String,
			completion: @escaping (_ result: Result<Vehicle>) -> Void)
    
    func updateVehicleInfo(accountId: String,
			vehicleId: String,
			updateVehicleRequest: Updatevehiclerequest,
			completion: @escaping (_ result: Result<Vehicle>) -> Void)
    
}