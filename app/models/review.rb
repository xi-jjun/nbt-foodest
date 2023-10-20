class Review < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user

  module AbsorbedLevel
    ABSORBED_50 = 1
    ABSORBED_100 = 2
    ABSORBED_150 = 3
    ABSORBED_200 = 4
  end
end
