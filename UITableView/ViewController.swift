//
//  ViewController.swift
//  UITableView
//
//  Created by marco rodriguez on 17/04/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var contactoEnviar: String?
    
    var contactos = ["Alonso", "Roberto", "Ana", "Lizeth", "Prdro"]

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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(contactos[indexPath.row])
        contactoEnviar = contactos[indexPath.row]
        
        performSegue(withIdentifier: "enviar", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "enviar" {
            let objDestino = segue.destination as! DetalleContactoViewController
            objDestino.recibirContacto = contactoEnviar
        }
    }
}

