class AddPubYearToSources < ActiveRecord::Migration
  def change
    add_column :sources, :pub_year, :integer
  end
end
