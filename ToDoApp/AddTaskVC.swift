//
//  AddTaskVC.swift
//  ToDoApp
//
//  Created by Alick C Zhang on 7/10/17.
//  Copyright © 2017 Alick C Zhang. All rights reserved.
//

import UIKit

class AddTaskVC: UIViewController {
    
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var isImp : UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func addTextField(_ sender: Any) {
        
        //retrieving data from CoreData
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: context)
        task.name = textField.text!
        task.isImportant = isImp.isOn
        
        //save data to CoreData
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        //pops open the viewController after pressing add

        navigationController!.popViewController(animated: true)
    }
    
}
