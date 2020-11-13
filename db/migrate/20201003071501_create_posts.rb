class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :name,              null: false
      t.string :text,              null: false
      t.string :image,             null: false
      t.string :outer,              null: false
      t.string :base,               null: false
      t.string :inner,              null: false
      t.string :accessory
      t.string :hairstyle,          null: false
      t.timestamps
    end
  end
end
