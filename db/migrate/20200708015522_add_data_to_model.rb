class AddDataToModel < ActiveRecord::Migration[6.0]
  def change
    add_column :models, :data, :string
  end
end
