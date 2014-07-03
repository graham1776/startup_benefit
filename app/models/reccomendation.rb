class Reccomendation < ActiveRecord::Base
  belongs_to :benefit
  validates_formatting_of :url, using: :url
  validates_formatting_of :favicon_url, using: :url
end
