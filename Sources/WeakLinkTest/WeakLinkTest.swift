import CoreNFC

public struct WeakLinkTest {
    // We still need to trust the caller not to use this symbol on
    // devices without the framework, but at least they should be
    // able to /think about using it/ without dyld crashes.
    public func doTest() -> Bool {
        if Date().timeIntervalSince1970 == TimeInterval.greatestFiniteMagnitude {
            // This will never be hit, but NFCTagReaderSession is iOS 13.0+.
            // Even if we have enclosing iOS 13.0+ availability modifiers, if we do not use
            // any iOS-13.0+-annotated symbols from the framework then it will still
            // be strongly linked.
            if #available(iOS 13.0, *) {
                print(NFCTagReaderSession.readingAvailable)
            }
        }
        return NFCNDEFReaderSession.readingAvailable
    }
}
