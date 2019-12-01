//
//  day01.swift
//  Advent of Code 2019
//
//  Created by Jesse Stolwijk on 01/12/2019.
//  Copyright © 2019 Jesse Stolwijk. All rights reserved.
//

import Foundation

private let input = """
143845
86139
53043
124340
73213
108435
126874
131397
85618
107774
66872
94293
51015
51903
147655
112891
100993
143374
83737
145868
144768
89793
124127
135366
94017
81678
102325
75394
103852
81896
148050
142780
50503
110691
117851
137382
92841
138222
128414
146834
59968
136456
122397
147157
83595
59916
75690
125025
147797
112494
76247
100221
63389
59070
97466
91905
126234
76561
128170
102778
82342
131097
51609
148204
74812
64925
127927
79056
73307
78431
88770
97688
103564
76001
105232
145361
77845
87518
117293
110054
135599
85005
85983
118255
103031
142440
140505
99614
69593
69161
78795
54808
115582
117976
148858
84193
147285
89038
92677
106574
"""


func day01() -> Void {
    let masses = input.lines().map { Int($0) ?? 0 }
    
    let totAmountOfRequiredFuel = masses.map {
        calculateAmountOfFuel(mass: $0, totalAmountOfMass: 0)
    }.reduce(0, +)
    
    print(totAmountOfRequiredFuel)
}

private func calculateAmountOfFuel(mass: Int, totalAmountOfMass: Int) -> Int {
    if mass <= 0 {
        return totalAmountOfMass
    }
    
    let currentMass = mass / 3 - 2
    return calculateAmountOfFuel(mass: currentMass, totalAmountOfMass: totalAmountOfMass + currentMass)
}

