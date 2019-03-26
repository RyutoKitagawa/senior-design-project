//
//  ShakaEdgeAdapter.swift
//  
//
//  Created by Brandon Wong on 3/25/19.
//

protocol ShakaEdgeAdapter {
    // Metric doesn't need to be specified since duration is hard coded
    func getEdgeWeight(source: LocationNode, dest: LocationNode) -> NSInteger
}

class GoogleEdgeAdapter: ShakaEdgeAdapter {
    func getEdgeWeight(source: LocationNode, dest: LocationNode) -> NSInteger {
        return getETA(origin: source.address, destination: dest.address)
    }
}
