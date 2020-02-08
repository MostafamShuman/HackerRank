
// https://www.hackerrank.com/challenges/sock-merchant

    func sockMerchant(n: Int, ar: [Int]) -> Int {
        let sortedArr = ar.sorted()
        var colorSockDict: [String: [Int]] = [:]
        var numberOfPairs = 0
        for i in sortedArr {
            var values = colorSockDict["\(i)"] ?? []
            values.append(i)
            colorSockDict.updateValue(values, forKey: "\(i)")
        }
        
        for (_, value) in colorSockDict {
            numberOfPairs += Int(value.count/2)
        }
        return numberOfPairs
    }