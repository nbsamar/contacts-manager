class CreatePhoneNumbers < ActiveRecord::Migration[5.1]
  def change
    create_table :phone_numbers do |t|
      t.integer :phoneNumber
      t.belongs_to :contact, index: true, foreign_key: true
      t.timestamps
    end
  end
end
