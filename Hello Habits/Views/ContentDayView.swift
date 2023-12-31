//
//  TestView.swift
//  Hello Habits
//
//  Created by Leonel Garay on 11/17/23.
//

import SwiftUI

struct ContentDayView: View {
    @State private var selectedDay = 0
    
    var body: some View {
        VStack {
            HStack {
                // Button to navigate to the previous set of days
                Button(action: {
                    selectedDay -= 1
                }) {
                    Image("leftarrow")
                }
                
                Spacer()

                // Display day number for selected day - 3
                Text(dayNumber(for: selectedDay - 3))
                    .font(.custom("Helvetica Neue", size: 14))
                    .foregroundColor(Color.tertiaryBrand)
                
                Spacer()

                // Display day number for selected day - 2
                Text(dayNumber(for: selectedDay - 2))
                    .font(.custom("Helvetica Neue", size: 14))
                    .foregroundColor(Color.tertiaryBrand)

                Spacer()

                // Display day number for selected day - 1
                Text(dayNumber(for: selectedDay - 1))
                    .font(.custom("Helvetica Neue", size: 14))
                    .foregroundColor(Color.tertiaryBrand)
                
                Spacer()

                // Display selected day with month abbreviation
                VStack(spacing: 3) {
                    Text(dayNumber(for: selectedDay))
                        .font(.custom("Helvetica Neue", size: 14))
                        .foregroundColor(.white)
                        .padding(.bottom, 2)
                    
                    Text(monthAbbreviation(for: selectedDay))
                        .font(.custom("Helvetica Neue", size: 14))
                        .foregroundColor(.white)
                }
                .padding(8)
                .background(
                    RoundedRectangle(cornerRadius: 29)
                        .fill(Color.tertiaryBrand)
                )

                Spacer()

                // Display day number for selected day + 1
                Text(dayNumber(for: selectedDay + 1))
                    .font(.custom("Helvetica Neue", size: 14))
                    .foregroundColor(Color.tertiaryBrand)
                
                Spacer()

                // Display day number for selected day + 2
                Text(dayNumber(for: selectedDay + 2))
                    .font(.custom("Helvetica Neue", size: 14))
                    .foregroundColor(Color.tertiaryBrand)
                
                Spacer()

                // Display day number for selected day + 3
                Text(dayNumber(for: selectedDay + 3))
                    .font(.custom("Helvetica Neue", size: 14))
                    .foregroundColor(Color.tertiaryBrand)
                
                Spacer()
                
                // Button to navigate to the next set of days
                Button(action: {
                    selectedDay += 1
                }) {
                    Image("rightarrow")
                }
                .disabled(selectedDay == 3)
            }
            
            .padding()
        }
        .padding(.horizontal)
    }
    
    // Function to get the day number for a given offset from the current day
    func dayNumber(for day: Int) -> String {
        let currentDate = Date()
        let dayDate = Calendar.current.date(byAdding: .day, value: day, to: currentDate) ?? currentDate
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd"
        return dateFormatter.string(from: dayDate)
    }
    
    // Function to get the month abbreviation for a given offset from the current day
    func monthAbbreviation(for day: Int) -> String {
        let currentDate = Date()
        let monthDate = Calendar.current.date(byAdding: .day, value: day, to: currentDate) ?? currentDate
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM"
        return dateFormatter.string(from: monthDate)
    }
}

struct ContentDayView_Previews: PreviewProvider {
    static var previews: some View {
        ContentDayView()
    }
}
