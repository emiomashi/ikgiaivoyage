class AddPrefectureToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :prefecture, :string
  end
end
