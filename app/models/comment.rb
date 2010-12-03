class Comment
  include Mongoid::Document
  include Mongoid::Timestamps

  attr_protected  :_id
  #--Associations--#
  referenced_in   :user, :stored_as => :array,
                         :inverse_of => :comments,
                         :index => true
  embedded_in     :post, :inverse_of => :comments
  #--data fields--#
  field           :content
  #--validations--#
  validates :content, :presence => true,
                      :length => { :within => 3..255 }

end
