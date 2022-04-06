//
//  AboutView.swift
//  COVID-19
//
//  Created by Hannah Kim on 10/3/20.
//  Template Copyright © 2019 Ray Wenderlich. All rights reserved.

import SwiftUI

struct AboutView: View {
    var body: some View {
            VStack {
                Text("🧬 Reverse Transcriptase Polymerase Chain Reaction 🧬")
                Text("RT-PCR allows scientists to copy the gene of interest at a rapid rate.")
                Text("Scientists build primers to identify and copy target genes")
                Text("After, different tests can be used if the target gene is present in the sample.")
                Spacer()
                Text("For example, if a person has COVID19, the test will show that the 3 target genes - the RdRP, E, N genes")
                Text("- are present from the RNA extracted from their mucus.")
            }
            .padding(.top, 40)
            .padding(.bottom, 30)
            .navigationBarTitle("About RT-PCR")
            .background(Image("RTPCRInfo")
                            .resizable()
                            .aspectRatio(contentMode: .fill))
        }
    }
struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView().previewLayout(.fixed(width: 896, height: 414))
    }
}
