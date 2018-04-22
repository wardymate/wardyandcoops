class WeddingResponse < ApplicationRecord
  ACCOMODATION_OPTIONS = [
   ["We have our own tent and can even pitch it as well!", :camping],
   ["We're bringing the camper, save us a pitch!", :campervan],
   ["We are interested in hiring a luxury Bell tent.", :bell_tent],
   ["We don't do canvas Darling! We will stay somewhere nearby.", :hotel]
  ]
  enum accomodation: %i[camping campervan bell_tent hotel]

  validates :coming, presence: true

  def coming?
    coming == "Yes"
  end
end
