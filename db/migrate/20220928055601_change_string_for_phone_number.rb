class ChangeStringForPhoneNumber < ActiveRecord::Migration[6.1]
  def change
    change_column :Contact, :phone_number, :string
  end
  def up
    change_column :Contact, :phone_number, :string
  end

  def down
    change_column :Contact, :phone_number, :integer
  end
end
