class AddStepNumberToSteps < ActiveRecord::Migration
  def change
    add_column :steps, :step_number, :string
  end
end
