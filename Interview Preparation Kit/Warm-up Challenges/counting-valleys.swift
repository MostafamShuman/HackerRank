
// https://www.hackerrank.com/challenges/counting-valleys/problem

func countingValleys(n: Int, s: String) -> Int {
        var steps = s.map { $0 == "U" ? 1 : -1}
        var previous = 0
        var numberOfValleys = 0
        for i in steps {
            if previous == 0 && i < 0 {
                numberOfValleys += 1
            }
            previous += i
        }
        return numberOfValleys
    }