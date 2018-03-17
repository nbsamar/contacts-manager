class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :city
      t.string :street
      t.string :region
      t.integer :postcode
      t.string :country
      t.belongs_to :contact, index: true, foreign_key: true
      t.timestamps
    end
  end
end
