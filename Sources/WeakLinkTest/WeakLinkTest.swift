import CoreNFC

@available(iOS 13.0, *)
public struct WeakLinkTest {
    @available(iOS 13.0, *)
    public func doTest() -> Bool {
        return NFCNDEFReaderSession.readingAvailable
    }
}
