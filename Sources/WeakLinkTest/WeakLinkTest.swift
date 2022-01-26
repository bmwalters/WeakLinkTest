import CryptoTokenKit

public struct WeakLinkTest {
    public func doTest() -> [String] {
        // Why is the availability modifier for this symbol iOS 10.0 if CryptoTokenKit framework is documented as iOS 13.0?
        // Is this some weird artifact of CryptoTokenKit previously being a private framework?
        // Anyway we won't get compiler warnings when we use these symbols because
        // technically our deployment target is high enough.
        // But we still should be able to test automatic weak linking features as
        // hiding these behind availability checks should cause weak linking.
        // Right?
        // We may need to make the checks below the symbol introduction version.
        // (Not just below our deployment target.)
        if #available(iOS 13.0, *) {
            return TKTokenWatcher().tokenIDs
        } else {
            return []
        }
    }
}
