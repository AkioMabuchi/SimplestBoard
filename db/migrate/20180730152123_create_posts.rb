class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :name
      t.string :email
      t.text :title
      t.text :body
      t.integer :respond_id

      t.timestamps
    end
  end
end
