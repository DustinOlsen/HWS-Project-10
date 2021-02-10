//
//  AddressView.swift
//  HWS Project 10
//
//  Created by Dustin Olsen on 2/10/21.
//

import SwiftUI

struct AddressView: View {
    
    @ObservedObject var order: Order
    
    
    
    var body: some View {
        Form {
            Section {
                TextField("Name", text: $order.name)
                TextField("Street Address", text: $order.streetAddress)
                TextField("City", text: $order.city)
                TextField("Zip Code", text: $order.zip)
            }
            Section {
                NavigationLink(destination: CheckoutView(order: order)) {
                    Text("Check Out")
                }
                .disabled(order.hasValidAddress == false)
            }
        }
        .navigationBarTitle("Delivery Details", displayMode: .inline)
    }
}

struct AddressView_Previews: PreviewProvider {
    static var previews: some View {
        AddressView(order: Order())
    }
}
