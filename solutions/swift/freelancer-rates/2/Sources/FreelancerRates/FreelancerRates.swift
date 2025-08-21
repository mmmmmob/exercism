func dailyRateFrom(hourlyRate: Int) -> Double {
    return Double(hourlyRate * 8)
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
    let monthlyRate = Double(hourlyRate * 8 * 22) * (1 - discount / 100)
    return monthlyRate.rounded()
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
    let discountedMonthlyRate = Double(hourlyRate * 8) * (1 - discount / 100)
    let workingDays = budget / discountedMonthlyRate
    return workingDays.rounded(.down)
}

