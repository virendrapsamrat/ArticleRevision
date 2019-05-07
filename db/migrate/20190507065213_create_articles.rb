class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
     t.text :name
     t.integer :mobile_number
     t.text :address
     t.string :details
      t.timestamps
    end
  end
end
