class CreateSaveArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :save_articles do |t|
      t.references :article, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
