class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :author_id
      t.integer :raiting

      t.timestamps
    end
  end
end
