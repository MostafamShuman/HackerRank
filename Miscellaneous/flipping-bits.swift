
// https://www.hackerrank.com/challenges/flipping-bits

func flippingBits(n: Int) -> Int {
        var binaryStr = String(n, radix: 2)
        for _ in 0..<(32-binaryStr.count) {
            binaryStr = "0" + binaryStr
        }
        let convertedBinaryStr = binaryStr.map {$0 == "1" ? "0" : "1"}.joined()
        return Int(convertedBinaryStr, radix: 2) ?? 0
    }