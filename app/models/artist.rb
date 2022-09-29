class Artist < ApplicationRecord
    has_many :tracks, dependent: :destroy

    # validates :name, {
    #     presence: true,
    #     length: {
    #         in: 3..20
    #     },
    #     numericality: false,
    #     uniqueness: true

    # }

    validate :name_length
    validate :name_domain

    def name length
        unless name.length >= 3 && name.length <= 20
            errors.add(:name, "Name must be at least 3 characters long")
        end
    end

    def name_domain
        unless name.match?(/moringaschool.com/)
            errors.add(:name, "Name must be from moringaschool")
end
