class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.references :user, foreign_key: true
      t.references :company, foreign_key: true
      t.string :sentence, null: false
      t.timestamps
    end
  end
end
