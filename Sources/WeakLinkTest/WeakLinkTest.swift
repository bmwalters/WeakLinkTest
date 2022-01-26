import CoreNFC

@available(watchOSApplicationExtension 37.0, *)
public struct WeakLinkTest {
    @available(watchOSApplicationExtension 37.0, *)
    public func doTest() -> Bool {
        return NFCNDEFReaderSession.readingAvailable
    }
}
