//
//  h3-swift.swift
//  h3-swift
//
//  Created by David Van Duzer on 2/11/18.
//  Copyright © 2018 SCUPPER™ Foundation. All rights reserved.
//

import Foundation
import h3

func haversineDistance(th1: Double, ph1: Double, th2: Double, ph2: Double) -> Double{
    var dx, dy, dz: Double
    let R = 6371.0088
    
    dz = sin(th1) - sin(th2)
    dx = cos(ph1 - ph2) * cos(th1) - cos(th2)
    dy = sin(ph1 - ph2) * cos(th1)
    return asin(sqrt(dx * dx + dy * dy + dz * dz) / 2) * 2 * R
}

func main() {
    // 1455 Market St @ resolution 15
    let h3HQ1: H3Index = stringToH3("8f2830828052d25")
    // 555 Market St @ resolution 15
    let h3HQ2: H3Index = stringToH3("8f283082a30e623")
/*
    var geoHQ1, geoHQ2: GeoCoord
    h3ToGeo(h3HQ1, &geoHQ1)
    h3ToGeo(h3HQ2, &geoHQ2)
    
    print(String(
        format: "origin: (%lf, %lf)\n",
        "destination: (%lf, %lf)\n",
        "distance: %lfkm\n",
    radsToDegs(geoHQ1.lat), radsToDegs(geoHQ1.lon), radsToDegs(geoHQ2.lat),
    radsToDegs(geoHQ2.lon),
    haversineDistance(th1: geoHQ1.lat, ph1: geoHQ1.lon, th2: geoHQ2.lat, ph2: geoHQ2.lon)))
    // Output:
    // origin: (37.775236, 237.580245)
    // destination: (37.789991, 237.597879)
    // distance: 2.256850km
*/
}
