class Comment
  include Mongoid::Document
  field :short_text, type: String
end
