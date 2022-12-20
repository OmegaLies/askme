class ChangeNavbarColor < ActiveRecord::Migration[7.0]
  def change
    change_column_default :users, :navbar_color, from: nil, to: "#370617"
  end
end
