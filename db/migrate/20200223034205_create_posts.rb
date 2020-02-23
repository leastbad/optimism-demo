class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :name
      t.integer :age
      t.text :body
      t.boolean :consent

      t.timestamps
    end
  end
end
