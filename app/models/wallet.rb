class Wallet < ApplicationRecord
  has_one_attached :driver_license
  has_many_attached :credit_cards
end
