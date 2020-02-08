
// https://www.hackerrank.com/challenges/repeated-string

func repeatedString(s: String, n: Int) -> Int {
        let numberOfAInString = s.filter { $0 == "a" }.count
        let numberOfBartsInInfiniteString = Int(n/s.count)
        let restOfAInString = s.prefix( n % s.count).filter { $0 == "a" }.count
        return (numberOfAInString * numberOfBartsInInfiniteString) + restOfAInString
    }
