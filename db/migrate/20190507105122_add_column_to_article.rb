class AddColumnToArticle < ActiveRecord::Migration[5.1]
  def change
  	add_column :articles, :image, :string
  	add_column :articles, :user_id, :integer
  	remove_column :articles, :iamge
  end
end
