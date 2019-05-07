
import UIKit

class ViewController: UIViewController,UITableViewDataSource {
    
    @IBOutlet weak var TableView: UITableView!
    
    var animals = ["레드벨벳","예리","슬기","아이린","예리1","조이"]
    var detallAnimals = ["레드벨벳","예리","슬기","아이린","예리1","조이"]
    
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
