import CoreNFC

public struct WeakLinkTest {
    public func doTest() -> Bool {
        if #available(iOS 13.0, *) {
            // introduced in iOS 11.0, but framework may not be present on some devices!
            return NFCNDEFReaderSession.readingAvailable
        } else {
            return false
        }
    }
}
