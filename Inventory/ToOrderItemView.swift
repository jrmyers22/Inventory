//
//  ToOrderItemView.swift
//  Inventory
//
//  Created by Jacob Myers on 8/29/21.
//

import SwiftUI

struct ToOrderItemView: View {
    
    // State
    @Binding var checked: Bool
    
    // Params
    var amount: String = "Amount"
    var product: String = "Product"
    var isOrdered: Bool = false
    
    var body: some View {
        HStack {
            if (isOrdered) {
                Image(systemName: checked ? "checkmark.square.fill" : "square")
                            .foregroundColor(checked ? Color(UIColor.systemFill) : Color.secondary)
                            .onTapGesture {
                                self.checked.toggle()
                            }
                Text(amount + " of " + product)
                    .strikethrough()
            } else {
                Image(systemName: checked ? "checkmark.square.fill" : "square")
                            .foregroundColor(checked ? Color(UIColor.systemFill) : Color.secondary)
                            .onTapGesture {
                                self.checked.toggle()
                            }
                Text(amount)
                    .bold()
                Text("of")
                Text(product)
                    .bold()
                    
            }
            
        }
    }
}

struct ToOrderItemView_Previews: PreviewProvider {
    struct CheckBoxViewHolder: View {
        @State var checked = false

        var body: some View {
            ToOrderItemView(checked: $checked)
        }
    }

    static var previews: some View {
        CheckBoxViewHolder()
    }
}
