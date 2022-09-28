class StringPhoneNumber < ActiveRecord::Migration[6.1]
  def change
    def change
      change_column :Contact, :phone_number, :string
    end
  end
end
