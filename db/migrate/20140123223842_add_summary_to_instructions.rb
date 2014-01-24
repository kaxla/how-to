class AddSummaryToInstructions < ActiveRecord::Migration
  def change
    add_column :instructions, :summary, :string
  end
end
