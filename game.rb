module Dice
  extend self
  def roll
    (1..6).to_a.sample
  end
end

class Event
  attr_reader :turn

  def initialize roll_outcome
    @turn = EVENTS[Integer(roll_outcome) - 1]
    `say #{self}`
  end

  def to_s
    "You #{turn}"
  end

  private

  EVENTS = [
    "are attacked by dragons",
    "are befriended by a dragon",
    "stumble across the badger mage",
    "find a rare item",
    "fall into a hole",
    "escape from a pack of wolves"
  ]
end

class Journey
  attr_reader :turn
  def initialize roll_outcome
    @turn = TRIPS[Integer(roll_outcome) - 1]
    `say #{self}`
  end

  def to_s
    "While #{turn}"
  end

  private

  TRIPS = [
    "walking to the lake",
    "riding a horse through the mountains",
    "boating down a river",
    "flying on giant eagles to the deep wood",
    "riding the train through the grasslands",
    "treking through the jungle"
  ]
end

Journey.new Dice.roll
Event.new Dice.roll
