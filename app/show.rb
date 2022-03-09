class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum(:rating)
  end

  def self.most_popular_show
    self.where("rating=?", self.highest_rating).firts
    # self.max_by(|s| s.highest_rating).first
  end

  def.lowest_rating
    self.minimum(:rating)
  end

  def.least_popular_show
    self.where("rating=?", self.lowest_rating).firs
    # self.min_by(|s| s.lowest_rating).first
  end

  def self.rating_sum
    self.sum(:rating)
  end

  def self.popular_shows
    self.where("rating > ?", 5)
  end

  def shows_by_alphabetical_order
    self.order(:name)
  end
end