//
//  LogadoView.swift
//  TelaLoginCorrigida
//
//  Created by user208023 on 5/5/22.
//

import UIKit

class LogadoView: UIViewController {
       
//    let registerController = RegisterController()
    @IBOutlet weak var tableViewLogado: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableViewLogado.delegate = self
        self.tableViewLogado.dataSource = self
        self.tableViewLogado.register(UINib(nibName: "CustomCardCell", bundle: nil), forCellReuseIdentifier: "CustomCardCell")
    }
    
    
    
}

extension LogadoView: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        RegisterController.instance.userList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let customCell: CustomCardCell? = tableViewLogado.dequeueReusableCell(withIdentifier: "CustomCardCell", for: indexPath) as? CustomCardCell
        
        customCell?.labelFullName.text = "\(RegisterController.instance.userList[indexPath.row].name ?? "") \(RegisterController.instance.userList[indexPath.row].lastName ?? "")"
        customCell?.labelOffice.text = "\(RegisterController.instance.userList[indexPath.row].office ?? "")"
        customCell?.labelEmail.text = "\(RegisterController.instance.userList[indexPath.row].email)"
        return customCell ?? UITableViewCell()
    }
    
    
}
