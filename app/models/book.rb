class Book < ActiveRecord::Base
  belongs_to :author
  validates :title, uniqueness: true


  def dog=(dog)
    puts "DOG!!!!!"
  end

  def author_name=(author_name)
    names = author_name.split(" ")
    author = Author.find_or_create_by(first_name: names[0], last_name: names[1])
    self.author = author
    self.save
  end

  def author_full_name
    if self.author.present?
      author.full_name
    end
  end

end
