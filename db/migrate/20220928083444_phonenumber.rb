class Phonenumber < ActiveRecord::Migration[6.1]
  def change
    change_column :Contact, :phone_number, :string
  end
end
