import CoreNFC

public struct WeakLinkTest {
    public func doTest() -> Bool {
        if #available(iOS 13.0, *) {
            return AvailabilityWrapper().wrappedReadingAvailable
        } else {
            return false
        }
    }
}

@available(iOS 13.0, *)
class AvailabilityWrapper {
    @available(iOS 13.0, *)
    var wrappedReadingAvailable: Bool {
        if #available(iOS 13.0, *) {
            return NFCNDEFReaderSession.readingAvailable
        } else {
            return false
        }
    }
}
