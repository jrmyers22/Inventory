//
//  ToOrderView.swift
//  Inventory
//
//  Created by Jacob Myers on 8/29/21.
//

import SwiftUI

struct ToOrderView: View {
    // State Vars
    @State var checked = false
    
    // Params
    var clientName: String = "Default Client Name"
    
    
    var body: some View {
        HStack {
            VStack {
                Text(clientName)
                    .padding(.top, 30)
                ToOrderItemView(checked: $checked)
                    .padding(.top)
                    .padding(.leading, 40)
                ToOrderItemView(checked: $checked)
                    .padding(.top)
                    .padding(.leading, 40)
                ToOrderItemView(checked: $checked)
                    .padding(.top)
                    .padding(.leading, 40)
                
                Text(clientName)
                    .padding(.top, 30)
                ToOrderItemView(checked: $checked)
                    .padding(.top)
                    .padding(.leading, 40)
                ToOrderItemView(checked: $checked)
                    .padding(.top)
                    .padding(.leading, 40)
                ToOrderItemView(checked: $checked)
                    .padding(.top)
                    .padding(.leading, 40)
                
                
                Spacer()
                    
            }.padding(.leading)
            
            Spacer()
        }
    }
}

struct ToOrderView_Previews: PreviewProvider {
    static var previews: some View {
        ToOrderView()
    }
}
