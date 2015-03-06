//
//  InterfaceController.swift
//  WatchkitTable WatchKit Extension
//
//  Created by Andrew Seeley on 5/03/2015.
//  Copyright (c) 2015 Seemu. All rights reserved.
//

import WatchKit
import Foundation

// Add table data
// Setup custom class for table row items and label
// Set clel identifier
// Add load table data then load

class InterfaceController: WKInterfaceController {

    
    @IBOutlet var tableView: WKInterfaceTable!
    var tableData = ["I", "Love", "Apple", "Watch", ":)", ":)"]
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        loadTableData()
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        

    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
    // Load table into the data
    func loadTableData() {
        // Set total row count. Remember our identifier was Cell
        tableView.setNumberOfRows(tableData.count, withRowType: "Cell")
        
        var i = 0 // Used to count each item
        for item in tableData { // Loop over each item in tableData
            let row = tableView.rowControllerAtIndex(i) as TableRowObject // Get a single row object for the current item
            row.lblTblRowItem.setText(item) // Set the row text to the corresponding item
            i++ // Move onto the next item
        }
        
    }

}
