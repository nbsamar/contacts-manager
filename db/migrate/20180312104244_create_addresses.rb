class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.belongs_to :contact, index: true
      t.timestamps
    end
  end
end
