import GoogleMobileAds
import UIKit

class ViewController: UIViewController {
    
    var bannerView: GADBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bannerView = GADBannerView(adSize: kGADAdSizeBanner)
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
        // In this case, we instantiate the banner with desired ad size.
        
        
        addBannerViewToView(bannerView)
    }
    
    func addBannerViewToView(_ bannerView: GADBannerView) {
        bannerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bannerView)
        var constraints : [NSLayoutConstraint] = [NSLayoutConstraint]()
        constraints.append(bannerView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0))
        constraints.append(bannerView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 0))
        constraints.append(bannerView.centerXAnchor.constraint(equalTo: view.centerXAnchor))
        constraints.append(bannerView.centerYAnchor.constraint(equalTo: view.centerYAnchor))
        constraints.append(bannerView.heightAnchor.constraint(equalToConstant: 300))
        NSLayoutConstraint.activate(constraints)
        
    }
    
}
