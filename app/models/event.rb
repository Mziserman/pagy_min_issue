class Event < ApplicationRecord
  has_many :instancings, as: :instanceable
  has_many :instances, through: :instancings

  scope :by_instance, ->(instance_id) { joins(:instances).where('instances.id' => instance_id) }
end
