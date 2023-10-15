//
//  DatePickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Berkay Tuncel on 11.10.2023.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State var selectedDay: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short 
        return formatter
    }
    
    var body: some View {
        VStack {
            Text("Selected Day Is".uppercased())
            Text(dateFormatter.string(from: selectedDay))
                .font(.title)
            DatePicker("Select a Date", selection: $selectedDay, in: startingDate...endingDate, displayedComponents: [.date])
                .tint(.red)
                .padding(.horizontal, 50)
        }
    }
}

struct DatePickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootcamp()
    }
}
