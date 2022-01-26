import VisionKit

public struct WeakLinkTest {
    public func doTest() -> Bool {
        if #available(iOS 13.0, *) {
            return VNDocumentCameraViewController.isSupported
        } else {
            return false
        }
    }
}
