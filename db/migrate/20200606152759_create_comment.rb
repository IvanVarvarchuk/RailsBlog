class CreateComment < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.belongs_to :account, null: false, foreign_key: true
      t.text :text
      t.belongs_to :post, null: false, foreign_key: true
      t.timestamps
    end
  end
end
