//
//  PlaySongVC.swift
//  SwappingScreens
//
//  Created by Macbook on 03/10/2016.
//  Copyright © 2016 Chappy-App. All rights reserved.
//

import UIKit

class PlaySongVC: UIViewController {

  @IBOutlet weak var songTitleLbl: UILabel!
  
  private var _selectedSong:String!
  
  var selectedSong: String {
    get {
      return _selectedSong
    } set {
      _selectedSong = newValue
    }
  }
  
  
    override func viewDidLoad() {
        super.viewDidLoad()

    songTitleLbl.text = _selectedSong
    
          
    }
  
  @IBAction func backButtonPressed(_ sender: AnyObject) {
  
            dismiss(animated: true, completion: nil)
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
