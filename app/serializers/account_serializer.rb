class AccountSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :amount, :status
  belongs_to :user
end
