class FixColumnName < ActiveRecord::Migration
  def change
  	change_table :posts do |t|
  		t.rename :comment, :body
  	end
  end
end
