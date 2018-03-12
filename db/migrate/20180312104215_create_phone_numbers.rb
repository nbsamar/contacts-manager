class CreatePhoneNumbers < ActiveRecord::Migration[5.1]
  def change
    create_table :phone_numbers do |t|
      t.belongs_to :contact, index: true
      t.timestamps
    end
  end
end
