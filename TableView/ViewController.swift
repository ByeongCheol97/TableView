
import UIKit

class ViewController: UIViewController,UITableViewDataSource {
    
    @IBOutlet weak var TableView: UITableView!
    
    var animals = ["Cat","Dog","Pig","Brid","Whale","Cow"]
    var detallAnimals = ["고양이","개","돼지","새","고래","소"]
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        TableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 6
        
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let myCell = TableView.dequeueReusableCell(withIdentifier: "RE", for: indexPath)
        
        let myRow = indexPath.row
        
        myCell.textLabel?.text = animals[myRow]
        
        myCell.detailTextLabel?.text = detallAnimals[myRow]
        
        myCell.imageView?.image = UIImage(named: animals[myRow])
 
        return myCell
    }
}


