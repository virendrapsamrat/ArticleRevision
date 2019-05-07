class AddColumnMobilenumber < ActiveRecord::Migration[5.1]
  def change
  	add_column :articles, :contact_number, :string
  end
end
