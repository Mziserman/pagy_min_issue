class CreateInstancings < ActiveRecord::Migration[5.2]
  def change
    create_table :instancings do |t|
      t.references :instanceable, polymorphic: true, index: true
      t.references :instance, index: true
    end
  end
end
