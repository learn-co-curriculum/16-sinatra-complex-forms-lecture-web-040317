class Book < ActiveRecord::Base
  belongs_to :author
  has_many :book_genres
  has_many :genres, through: :book_genres

  validates :title, uniqueness: true

  def dog=(dog)
    puts "DOG!!!!!"
  end

  def author_name=(author_name)
    if author_name.present?
      names = author_name.split(" ")
      author = Author.find_or_create_by(first_name: names[0], last_name: names[1])
      self.author = author
      self.save
    end
  end

  def author_full_name
    if self.author.present?
      author.full_name
    end
  end

  # def genre_ids=(genre_ids)
  #   genre_ids.each do |genre_id|
  #     self.genres << Genre.find(genre_id)
  #   end
  # end

end
