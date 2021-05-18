class Task < ApplicationRecord
  belongs_to :user

  def self.to_csv
    attributes = %w{name description due_to}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |task|
        csv << attributes.map{ |attr| task.send(attr) }
      end
    end
  end

end
