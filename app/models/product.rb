class Product < ApplicationRecord
  has_attachments :photos, maximum: 10
end
