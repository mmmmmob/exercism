import Foundation

func cartesianToPolar(_ cart: (x: Double, y: Double)) -> (r: Double, phi: Double) {
  var polar: (r: Double, phi: Double) = (r: 0.0, phi: 0.0)
  polar.r = sqrt(pow(cart.x, 2) + pow(cart.y, 2))
  polar.phi = atan2(cart.y, cart.x)
  return polar
}

func combineRecords(
  production: (toy: String, id: Int, productLead: String),
  gifts: (Int, [String])
) -> (id: Int, toy: String, productLead: String, recipients: [String]) {
  var combined: (id: Int, toy: String, productLead: String, recipients: [String])
  
  combined.id = production.id
  combined.toy = production.toy
  combined.productLead = production.productLead
  combined.recipients = gifts.1

  return combined
}
