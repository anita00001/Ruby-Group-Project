require 'date'

class Item
  attr_accessor :id, :genre, :author, :source, :label, :publish_date, :archived

  # def initialize(_id, publish_date)
  def initialize(_id)
    @id = Random.rand(100...10_000)
    @publish_date = publish_date
    @archived = false
  end

  def can_be_archived?
    (Date.today.year - Date.parse(@publish_date).year) > 10
  end

  def move_to_archive
    @archived = can_be_archived?
  end
end
