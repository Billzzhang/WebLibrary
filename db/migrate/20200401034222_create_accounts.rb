class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts, id: false do |t|
      t.string :username
      t.string :password
      t.string :name
      t.integer :credit_card_num
      t.string :street_address
      t.string :zip_code
      t.string :city
      t.string :country
      t.boolean :is_owner

      t.timestamps
    end

    execute "ALTER TABLE accounts ADD PRIMARY KEY (username);"
  end
end
