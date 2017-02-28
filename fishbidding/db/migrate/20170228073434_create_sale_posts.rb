class CreateSalePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :sale_posts do |t|
      t.string :name
      t.float :bid
      t.float :size
      t.string :diet
      t.text :description
      t.int :duration

      t.timestamps
    end
  end
end
