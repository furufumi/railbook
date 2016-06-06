class Book < ActiveRecord::Base
   validates_length_of :isbn, :maximum => 13
end
