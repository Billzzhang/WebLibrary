class CreateSellers < ActiveRecord::Migration[5.2]
  def change
    create_table :sellers do |t|

      t.timestamps
    end

    
    add_foreign_key :sellers, :publishers
    add_foreign_key :sellers, :bookstores
    execute "ALTER TABLE sellers ADD PRIMARY KEY (email, bookstore_id);"
  end
end
