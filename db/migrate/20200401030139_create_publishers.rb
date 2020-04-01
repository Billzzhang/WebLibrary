class CreatePublishers < ActiveRecord::Migration[5.2]
  def change
    create_table :publishers, id: false, primary_key: :email do |t|
      t.string :email
      t.string :name
      t.string :address
      t.string :banking_information

      t.timestamps
    end

    execute "ALTER TABLE publishers ADD PRIMARY KEY (email);"
  end
end
