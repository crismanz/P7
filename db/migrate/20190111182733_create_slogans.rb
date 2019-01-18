class CreateSlogans < ActiveRecord::Migration[5.2]
  def change
    create_table :slogans do |t|
      t.string :first_name, limit: 15
      t.string :last_name, limit: 15
      t.string :email
      t.string :slogan, limit: 500

      t.timestamps
    end
  end
end
