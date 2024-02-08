class Tododatum < ApplicationRecord
    validates :title, {presence: true}
end
