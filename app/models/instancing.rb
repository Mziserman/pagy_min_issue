class Instancing < ApplicationRecord
  belongs_to :instanceable, polymorphic: true
  belongs_to :instance
end
