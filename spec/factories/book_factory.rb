Factory.define(:book) do |book|
  book.author "James Joyce"
  book.title "Ulysse"
  book.price 25
  book.image "/images/ulysse.jpg"
  book.description "Ulysses is a novel by the Irish author James Joyce, first serialised in parts in the American journal The Little Review from March 1918 to December 1920, then published in its entirety by Sylvia Beach on 2 February 1922, in Paris. One of the most important works of Modernist literature,[1] it has been called ... "
end

Factory.define(:war_and_peace, :class => :book) do |book|
  book.author "Leo Tolstoy"
  book.title "War and Peace"
  book.price 29
  book.image "/images/war_and_peace.jpg"
  book.description "a Russian novel by Leo Tolstoy, is considered one of the greatest works of fiction and a literary giant of the 19th century. It is regarded, along with Anna Karenina (1873–1877), as his finest literary achievement."
end
