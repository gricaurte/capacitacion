class Credito < ApplicationRecord
  belongs_to :client
  belongs_to :producto
end
