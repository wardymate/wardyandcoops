class AddWeddingMessageToWeddingResponse < ActiveRecord::Migration[5.1]
  def change
    add_column :wedding_responses, :message, :text
    change_column :wedding_responses, :address, :text
  end
end
