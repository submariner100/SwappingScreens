//
//  MusicListVCViewController.swift
//  SwappingScreens
//
//  Created by Macbook on 03/10/2016.
//  Copyright © 2016 Chappy-App. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.blue
  }

  @IBAction func backBtnPressed(_ sender: AnyObject) {
      dismiss(animated: true, completion: nil)
    
    
  }
  
  @IBAction func load3rdScreenPressed(_ sender: AnyObject) {
  
      let songTitle = "Quit Playing Games With My Heart"
      performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
  

  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let destination = segue.destination as? PlaySongVC {
      
      if let song = sender as? String {
          destination.selectedSong = song
      
      }
      
    }
  }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
