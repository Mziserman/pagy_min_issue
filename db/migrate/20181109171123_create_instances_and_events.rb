class CreateInstancesAndEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :instances
    create_table :events
  end
end
