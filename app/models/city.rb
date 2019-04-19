class City < ApplicationRecord
    # Validation du name par une présence obligatoire
    validates :name, presence: true
    # Validation du zip_code par une présence obligatoire et unique avec un format particulier
    validates :zip_code,
    presence: true,
    uniqueness: true,
    format: { with: /\A(([0-8][0-9])|(9[0-5])|(2[ab]))[0-9]{3}\z/, message: "please enter a valid french zip code" }
    # Une ville peut avoir plusieurs accommodations
    has_many :accommodations
end
