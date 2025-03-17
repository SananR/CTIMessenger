class Message < ApplicationRecord
    belongs_to :user
    validates :body, presence: true

    # Override GlobalID's unique index check for this model.
    def self.ensure_unique_index!
        true
    end
end
