class Instance < ApplicationRecord
  has_many :instancings
  has_many :events, through: :instancings, source: :instanceable, source_type: 'Event'
end
