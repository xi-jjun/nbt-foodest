class ReviewDecorator < ApplicationDecorator
  delegate_all

  module DisplayAbsorbedLevel
    LEVEL_50 = '몰입도 50%'
    LEVEL_100 = '몰입도 100%'
    LEVEL_150 = '몰입도 150%'
    LEVEL_200 = '몰입도 200%'
  end

  def display_reviewer
    object.user.name
  end

  def display_absorbed_level
    case object[:absorbed_level]
    when Review::AbsorbedLevel::ABSORBED_50
      DisplayAbsorbedLevel::LEVEL_50
    when Review::AbsorbedLevel::ABSORBED_100
      DisplayAbsorbedLevel::LEVEL_100
    when Review::AbsorbedLevel::ABSORBED_150
      DisplayAbsorbedLevel::LEVEL_150
    when Review::AbsorbedLevel::ABSORBED_200
      DisplayAbsorbedLevel::LEVEL_200
    else
      '-'
    end
  end
end
