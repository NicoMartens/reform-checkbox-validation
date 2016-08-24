class UserForm < Reform::Form
  property :name
  property :checkbox
  validates :checkbox, acceptance: true
end
