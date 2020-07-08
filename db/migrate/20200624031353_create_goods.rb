class CreateGoods < ActiveRecord::Migration[6.0]
  def change
    create_table :goods do |t|
      t.string :name
      t.integer :shopid
      t.text :description
      t.string :data
      t.integer :price
      t.string :category
      t.string :link
      t.string :thumbnail
      t.timestamps
    end
  end
end
