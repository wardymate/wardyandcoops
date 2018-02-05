class CreateWeddingResponses < ActiveRecord::Migration[5.1]
  def change
    create_table :wedding_responses do |t|
      t.string :names
      t.boolean :coming
      t.string :dietry_requirements
      t.boolean :friday_night
      t.integer :accomodation
      t.boolean :breakfast
    end
  end
end
