class Book < ApplicationRecord
    broadcasts_to ->(book) {'books'}, target: :books
end
