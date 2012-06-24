class Note < Content

  field :body, :type => String, :null => false, :autosave => true

  validates :body, :presence => true

  embedded_in :moment, :inverse_of => :note

  def filled?
    self.body.blank? ? false : true
  end

  def blank!
    self.body = nil
  end

end
