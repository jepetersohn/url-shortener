class Url < ActiveRecord::Base

  before_save :url_shortener

  def url_shortener
    self.short_url = "short.ly/" + extension_generator
    # self.short_url = extension_generator
  end

  private

  def extension_generator
    [("a".."z").to_a, ("A".."Z").to_a, (0..9).to_a].flatten.sample(6).join
  end
end

