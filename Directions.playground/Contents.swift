func playerDidMove(_ direction: String) {
    if direction == "up" ||
       direction == "down" ||
       direction == "left" ||
       direction == "right" {
        print("Player moved \(direction)")
    } else {
        print("Oops! That direction doesn't make sense: \(direction)")
    }
}

playerDidMove("up")     // Player moved up
playerDidMove("left")   // Player moved left
playerDidMove("dwn")    // Oops! That direction doesn't make sense: dwn
playerDidMove("Up")     // Oops! That direction doesn't make sense: Up



enum Direction {
    case up
    case down
    case left
    case right

    var excited: String {
        switch self {
        case .up:
            return "UP"
        case .down:
            return "DOWN"
        case .left:
            return "LEFT"
        case .right:
            return "RIGHT"
        }
    }
}

let direction1 = Direction.up
let direction2: Direction = .down
var direction3: Direction = .right

let direction = Direction.left

func playerDidMove(_ direction: Direction) {
    print("Player moved \(direction.excited)")
}

playerDidMove(direction1)   // Player moved UP
playerDidMove(direction2)   // Player moved DOWN
playerDidMove(direction3)   // Player moved RIGHT
playerDidMove(.left)        // Player moved LEFT
