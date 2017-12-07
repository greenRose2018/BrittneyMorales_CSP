//
//  InternetMasterViewController.swift
//  BrittneyMorales_CSP
//
//  Created by Morales, Brittney on 11/29/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

public class InternetMasterViewController: UITableViewController
{

    private (set) lazy var internetTopics : [String] =
    {
        return [
            "Defintions",
            "CSP",
            "CTEC",
            "Canyons",
            "Twitter",
            "Swift Guide",
            "Books"
        ]
    }()
   
    private lazy var addresses : [String] = []
    
    private var detailViewController : InternetDetailViewController?
    
    private func setup() -> Void
    {
        addresses = [
            "https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/index.html",
            "https://apstudent.collegeboard.org/apcourse/ap-computer-science-principles",
            "https://ctec.canyonsdistrict.org/",
            "http://www.canyonsdistrict.org/",
            "https://twitter.com/",
            "https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/index.html",
            "https://www.webnovel.com/"
            ]
        if let splitView = splitViewController
        {
            let currentControllers = splitView.viewControllers
            detailViewController = currentControllers[0] as? InternetDetailViewController
        }
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        setup()
        
        // Uncomment the following line to preserve selection between presentations
        self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override public func numberOfSections(in tableView: UITableView) -> Int
    {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        // #warning Incomplete implementation, return the number of rows
        return internetTopics.count
    }

    
    override public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let currentText = internetTopics[indexPath.row]
        cell.textLabel!.text = currentText
        
        return cell
    }
    
    //MARK: Handle the internal transer
    override public func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier! == "showDetail"
        {
            if let indexPath = self.tableView.indexPathForSelectedRow
            {
                let urlString = addresses[indexPath.row]
                let pageText : String
                
                if indexPath.row == 0
                {
                    //TODO: Replace with your definitions - great time to use the """ operator
                    pageText = """
                    
                         Url
                         an address that identifies a particular file on the Internet, usually consisting of the protocol, as http, followed by the domain name.
                         TCP
                         Transmission control protocol is a standard that defines how to establish and maintain a network conversation via which application programs can exchange data.
                        IP
                         a unique string of numbers separated by periods that identifies each computer using the Internet Protocol to communicate over a network.
                        DNS
                         (Domain Name System) The Internet's system for converting alphabetic names into numeric IP addresses. For example, when a Web address (URL) is typed into a browser, DNS servers return the IP address of the Web server associated with that name.
                    """
                    
                    /* extra for DNS - In this made-up example, the DNS converts the URL www.company.com into the IP address 204.0.8.51. Without DNS, you would have to type the series of four numbers and dots into your browser to retrieve the website, which you actually can do.*/

                }
                else
                {
                    pageText = internetTopics[indexPath.row]
                }
                
                let controller = segue.destination as! InternetDetailViewController
                
                controller.detailAddress = urlString
                controller.detailText = pageText
                controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton = true
            }
        }
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

