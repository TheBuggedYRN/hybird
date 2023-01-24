import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startSettings(_ sender: UIButton) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Settings", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "Settings") as! SettingsViewController
        self.present(nextViewController, animated:true, completion:nil)
    }
}

