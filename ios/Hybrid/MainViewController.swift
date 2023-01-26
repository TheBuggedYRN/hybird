import UIKit
import React
import Instabug

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func startReactNative(_ sender: UIButton) {
        let jsBundleUrl = URL(string: "http://localhost:8081/index.bundle?platform=ios")

        let controller = UIViewController()
        let rootView = RCTRootView(
            bundleURL: jsBundleUrl!,
            moduleName: "HybridApp",
            initialProperties: nil,
            launchOptions: nil
        )
        
        controller.view = rootView
        self.present(controller, animated: true, completion: nil)
    }
    
    @IBAction func startSettings(_ sender: UIButton) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Settings", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "Settings") as! SettingsViewController
        self.present(nextViewController, animated:true, completion:nil)
    }
    
    @IBAction func throwHandled(_ sender: UIButton) {
        let exception = NSException(name: NSExceptionName("Swift Handled Execption"), reason: "no reason")
        
        if let nonFatalException = CrashReporting.exception(exception) {
            nonFatalException.userAttributes = [
              "hello" : "world"
            ]
            nonFatalException.groupingString = "com.service.method.some_exception"
            nonFatalException.level = .critical
            nonFatalException.report()
        }

    }
    
    @IBAction func throwUnhandled(_ sender: UIButton) {

    }
}

