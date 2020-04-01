class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books, id: false do |t|
      t.string :isbn
      t.string :title
      t.string :author
      t.string :genre

      t.timestamps
    end

    execute "ALTER TABLE books ADD PRIMARY KEY (isbn);"
  end
end
