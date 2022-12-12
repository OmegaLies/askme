class ChangeHidden < ActiveRecord::Migration[7.0]
  def change
    change_column_null :questions, :hidden, false, false
    change_column_default :questions, :hidden, false
  end
end
