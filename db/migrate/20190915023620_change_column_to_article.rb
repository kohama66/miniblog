class ChangeColumnToArticle < ActiveRecord::Migration[5.0]
  def up
    change_column :articles, :content, :text, null: false
  end

  def down
    change_column :articles, :content, :text, null: true
  end
end
