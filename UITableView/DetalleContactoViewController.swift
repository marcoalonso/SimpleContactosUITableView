//
//  DetalleContactoViewController.swift
//  UITableView
//
//  Created by marco rodriguez on 17/04/22.
//

import UIKit

class DetalleContactoViewController: UIViewController {
    @IBOutlet weak var contactoLabel: UILabel!
    
    var recibirContacto: Contacto?

    override func viewDidLoad() {
        super.viewDidLoad()

        contactoLabel.text = recibirContacto?.nombre ?? ""
    }
    

}
