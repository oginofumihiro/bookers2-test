class CreateBookComments < ActiveRecord::Migration[5.2]
  def change
    create_table :book_comments do |t|

      t.text :body
      t.integer :book_id
      t.integer :user_id

      t.timestamps
    end
  end
end
