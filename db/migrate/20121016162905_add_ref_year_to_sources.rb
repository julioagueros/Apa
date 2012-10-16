class AddRefYearToSources < ActiveRecord::Migration
  def change
    add_column :sources, :ref_year, :integer
  end
end
