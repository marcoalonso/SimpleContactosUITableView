//
//  ViewController.swift
//  UITableView
//
//  Created by marco rodriguez on 17/04/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var contactos = ["Alonso", "Roberto", "Ana"]

    @IBOutlet weak var tablaContactos: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Delegados
        tablaContactos.delegate = self
        tablaContactos.dataSource = self
        
    }

    
    // MARK: - UITable View
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactos.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tablaContactos.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        celda.textLabel?.text = contactos[indexPath.row]
        celda.detailTextLabel?.text = "17 Abril"
        celda.imageView?.image = UIImage(systemName: "note")
        return celda
    }

}
