import FirebaseCore

public class Nudge {
    public init() {
        let frameworkBundle = Bundle(for: Nudge.self)
        let path = frameworkBundle.path(forResource: "GoogleService-Info", ofType: "plist")

        let options = FirebaseOptions(contentsOfFile: path!)

        FirebaseApp.configure(options: options!)
        NSLog("You've been nudged.")
    }
}
