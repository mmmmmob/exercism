class SpaceAge {
    var second: Double

    init(_ second: Double) {
        self.second = second
    }

    static let yearInSecond: Double = 31_557_600

    var onMercury: Double {
        return second / (SpaceAge.yearInSecond * 0.2408467)
    }

    var onVenus: Double {
        return second / (SpaceAge.yearInSecond * 0.61519726)
    }

    var onEarth: Double {
        return second / SpaceAge.yearInSecond
    }

    var onMars: Double {
        return second / (SpaceAge.yearInSecond * 1.8808158)
    }

    var onJupiter: Double {
        return second / (SpaceAge.yearInSecond * 11.862615)
    }

    var onSaturn: Double {
        return second / (SpaceAge.yearInSecond * 29.447498)
    }

    var onUranus: Double {
        return second / (SpaceAge.yearInSecond * 84.016846)
    }

    var onNeptune: Double {
        return second / (SpaceAge.yearInSecond * 164.79132)
    }
}