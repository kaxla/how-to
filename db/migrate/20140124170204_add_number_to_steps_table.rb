class AddNumberToStepsTable < ActiveRecord::Migration
  def change
    add_reference :steps, :instruction, index: true
  end
end
