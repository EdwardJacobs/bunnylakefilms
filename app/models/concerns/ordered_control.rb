module OrderedControl
  extend ActiveSupport::Concern

  def next
    self.class.where("id > ?", id).order('id ASC').first || self.class.first
  end

  def previous
    self.class.where("id < ?", id).order('id DESC').first || self.class.last
  end

end