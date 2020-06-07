class Project < ApplicationRecord
	has_many :tasks, -> { order("deadline ASC")}
end
