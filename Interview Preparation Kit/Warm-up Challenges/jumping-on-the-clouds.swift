
// https://www.hackerrank.com/challenges/jumping-on-the-clouds

func jumpingOnClouds(c: [Int]) -> Int {

        var numberOfJumping = 0
        var index = 0
        while index < c.count  {
            if index+2 < c.count && c[index+2] == 0 {
                index += 2
                numberOfJumping += 1
            } else {
                if index+1 < c.count && c[index+1] == 0 {
                    numberOfJumping += 1
                }
                index += 1
            }
        }
        
        return numberOfJumping
    }