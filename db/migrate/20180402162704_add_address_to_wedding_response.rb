class AddAddressToWeddingResponse < ActiveRecord::Migration[5.1]
  def change
    add_column :wedding_responses, :address, :string
  end
end
