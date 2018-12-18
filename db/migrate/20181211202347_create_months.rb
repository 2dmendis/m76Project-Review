class CreateMonths < ActiveRecord::Migration[5.2]
  def change
    create_table :months do |t|
      t.string :title

      t.timestamps
    end

    Month.create :title => "January"
    Month.create :title => "February"
    Month.create :title => "March"
    Month.create :title => "April"
    Month.create :title => "May"
    Month.create :title => "June"
    Month.create :title => "July"
    Month.create :title => "August"
    Month.create :title => "September"
    Month.create :title => "October"
    Month.create :title => "November"
    Month.create :title => "December"
  end
end
