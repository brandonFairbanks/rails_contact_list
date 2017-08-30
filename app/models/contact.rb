class Contact < ApplicationRecord
    has_one :address, dependent: :destroy
    has_many :notes, dependent: :destroy

    validate :phone, length: { maximum: 10 }, allow_nil: true

    validates_presences_of :email, :first_name, :last_name, on: :create
    validates_uniqueness_of :email
    validates_length_of :name, length: { minimum: 3 }
end