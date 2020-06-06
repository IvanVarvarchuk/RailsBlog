class CreatePost < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :author
      t.text :text
      t.belongs_to :category, null: false, foreign_key: true
      t.belongs_to :account, null: false, foreign_key: true
      t.timestamps
    end
  end
end
