class Event
  attr_reader :interaction, :character

  def initialize
    @interaction = INTERACTIONS.sample
    @character = CHARACTERS.sample
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
    "pack of wolves",
    "flock of pidgeons",
    "horde of a terantulas",
    "speeding pair of eagles",
    "gnashing shark",
    "angry dragonflies",
    "T-Rex!",
    "talons of a silver hawk"
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
    "jungle", "narrow crevice", "giant spiders lair", "great lake"
  ]
end

loop do
turn = "#{Journey.new} #{Event.new}"
puts turn
`say #{turn}`
gets
end
