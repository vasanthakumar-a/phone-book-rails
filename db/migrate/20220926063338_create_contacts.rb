class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.integer :phone_number
      t.string :email
      t.string :company_name
      t.date :birth_date
      t.text :address

      t.timestamps
    end
  end
end
