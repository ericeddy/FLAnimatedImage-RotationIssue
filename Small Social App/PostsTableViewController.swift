//
//  PostsTableViewController.swift
//  Small Social App
//
//  Created by Dev mobile on 2018-06-04.
//  Copyright © 2018 Skrumble. All rights reserved.
//

import UIKit
import Alamofire

class PostsTableViewController: UITableViewController {

    var posts:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Posts"
        
        self.posts = ["https://skrumble-dev-assets.s3.amazonaws.com/chats/5b4cadeaf1ad970f5063416b/IMG_0046%281%29.GIF",
                      "https://skrumble-dev-assets.s3.amazonaws.com/chats/5b4cadeaf1ad970f5063416b/IMG_0044%283%29.GIF",
                      "https://skrumble-dev-assets.s3.amazonaws.com/chats/5b4cadeaf1ad970f5063416b/IMG_0047%281%29.GIF",
                      "https://skrumble-dev-assets.s3.amazonaws.com/chats/5b4cadeaf1ad970f5063416b/4744215092546114532.jpg",
                      "https://skrumble-dev-assets.s3.amazonaws.com/chats/5b4cadeaf1ad970f5063416b/4744215092475303930.jpg",
                      "https://skrumble-dev-assets.s3.amazonaws.com/chats/5b4cadeaf1ad970f5063416b/4744214435480065278.jpg"]
//        NertworkManager.getPosts { [unowned self] (response) in
//
//            print(response)
//            self.posts = response
//            self.tableView.reloadData()
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func refresh() {
        self.posts = ["https://skrumble-dev-assets.s3.amazonaws.com/chats/5b4cadeaf1ad970f5063416b/IMG_0046%281%29.GIF",
                      "https://skrumble-dev-assets.s3.amazonaws.com/chats/5b4cadeaf1ad970f5063416b/IMG_0044%283%29.GIF",
                      "https://skrumble-dev-assets.s3.amazonaws.com/chats/5b4cadeaf1ad970f5063416b/IMG_0047%281%29.GIF",
                      "https://skrumble-dev-assets.s3.amazonaws.com/chats/5b4cadeaf1ad970f5063416b/4744215092546114532.jpg",
                      "https://skrumble-dev-assets.s3.amazonaws.com/chats/5b4cadeaf1ad970f5063416b/4744215092475303930.jpg",
                      "https://skrumble-dev-assets.s3.amazonaws.com/chats/5b4cadeaf1ad970f5063416b/4744214435480065278.jpg"]
        self.tableView.reloadData()
        
    }
    @IBAction func clear() {
        self.posts = []
        self.tableView.reloadData()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return posts.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:PostsTableViewCell = tableView.dequeueReusableCell(withIdentifier: "postcell", for: indexPath) as! PostsTableViewCell

        let post = posts[indexPath.row]
        
        cell.setup(url: post)

        return cell
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
