class City < ApplicationRecord
  belongs_to :prefecture, optional: true
end
