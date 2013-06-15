class Event
  attr_reader :interaction, :character

  def initialize
    @interaction = INTERACTIONS.sample
    @character = CHARACTERS.sample
    `say #{self}`
  end

  def to_s
    "you #{interaction} a #{character}"
  end

  private

  INTERACTIONS = [
    "are attacked by",
    "are befriended by",
    "stumble across",
    "escape from"
  ]

  CHARACTERS = [
    "dragon",
    "badger mage",
    "sea monster",
    "pack of wolves"
  ]
end

class Journey
  attr_reader :movement, :location
  def initialize
    @movement = MOVINGS.sample
    @location = LOCATIONS.sample
  end

  def to_s
    "While #{movement} #{location}"
  end

  private

  MOVINGS = [
    "walking to the",
    "riding a horse through the",
    "boating down a",
    "flying on giant eagles to the",
    "riding the train through the",
    "treking through the",
    "sailing through a",
    "stalking through a",
    "fishing in the",
    "camping in the"
  ]

  LOCATIONS = [
    "lake", "mountains", "rushing river", "deep wood", "grasslands",
    "jungle", "narrow crevace", 'giant spider\'s lair', "great lake"
  ]
end

turn = "#{Journey.new} #{Event.new}"
puts turn
`say #{turn}`
