//
//
//  AboutView2.swift
//  COVID-19
//
//  Created by Hannah Kim on 10/3/20.
//  Template Copyright © 2019 Ray Wenderlich. All rights reserved.
//

import SwiftUI

struct AboutView2: View {
    var body: some View {
        VStack {
            Text("The SARS-CoV-2 (COVID-19) RNA genome sequence contains 30,000 bases in length.")
            Text("Although the SARS-CoV-2 genome is 94.4% similar to the SARS-CoV genome (2003 pandemic),")
            Text("the features in the SARS-CoV-2 genome increases the virus’ transmissibility (shown below).")
            Spacer()
            Spacer()
            Text("This S gene is the novel feature of SARS-CoV-2 that differentiates it from other coronavirus types.")
            Text("Compared to SARS-CoV, the SARS-CoV-2 virus is distinctively different in the")
            Text("S gene due to 3 nucleotide insertions (not shown in the activity).")
            Text("This S gene is the novel feature of SARS-CoV-2 that differentiates it from other coronavirus types.")
            Text("Main reference: Frontiers of Immunology, 2020")
        }
        .padding(.top, 40)
        .padding(.bottom, 30)
        .navigationBarTitle("More Information")
        .background(Image("MoreInfo")
                        .resizable()
                        .aspectRatio(contentMode: .fill))
    }
}
struct AboutView2_Previews: PreviewProvider {
    static var previews: some View {
        AboutView2().previewLayout(.fixed(width: 896, height: 414))
    }
}
