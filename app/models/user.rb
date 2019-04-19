class User < ApplicationRecord
    # Validation de l'email par une présence obligatoire et unique avec un format particulier
    validates :email,
    presence: true,
    uniqueness: true,
    format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email adress please" }
    
    # Validation du phone_number par une présence obligatoire avec un format particulier
    validates :phone_number, presence: true,
    format: { with: /\A(?:(?:\+|00)33[\s.-]{0,3}(?:\(0\)[\s.-]{0,3})?|0)[1-9](?:(?:[\s.-]?\d{2}){4}|\d{2}(?:[\s.-]?\d{3}){2})\z/, message: "please enter a valid french number" }

    # Un user peu avoir plusieurs réservations et logements
    has_many :reservations
    has_many :user_administrator, foreign_key: 'administrator_id', class_name: "Accommodation"
end
