class ChangeWeddingResponseComing < ActiveRecord::Migration[5.1]
  def change
    change_column :wedding_responses, :coming, :string
  end
end
