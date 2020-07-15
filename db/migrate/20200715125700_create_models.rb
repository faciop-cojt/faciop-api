class CreateModels < ActiveRecord::Migration[6.0]
  def change
    create_table :models do |t|
      t.integer :goodid
      t.string :data
      t.timestamps
    end
  end
end
