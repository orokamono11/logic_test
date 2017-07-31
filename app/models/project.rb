class Project < ApplicationRecord
  is_impressionable
  paginates_per 10
end
