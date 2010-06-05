Factory.define(:neuromancer, :class => :book) do |book|
  book.author "William Gibson"
  book.title "Neuromancer"
  book.price 18
  book.image "/images/neuromancer.jpg"
  book.description "Here is the novel that started it all, launching the cyberpunk generation, and the first novel to win the holy trinity of science fiction: the Hugo Award, the Nebula Award and the Philip K. Dick Award. With Neuromancer, William Gibson introduced the world to cyberspace--and science fiction has never been the same."
end

Factory.define(:dune, :class => :book) do |book|
  book.author "Frank Herbert"
  book.title "Dune"
  book.price 33
  book.image "/images/dune.jpg"
  book.description "Dune is a science fiction novel written by Frank Herbert, published in 1965. It won the Hugo Award in 1966, and also the inaugural Nebula Award for Best Novel.[1] Dune is frequently cited as the world's best-selling science fiction novel."
end

Factory.define(:hamlet, :class => :book) do |book|
  book.author "William Shakespeare"
  book.title "Hamlet"
  book.price 18
  book.image "/images/hamlet.jpg"
  book.description "The Tragedy of Hamlet, Prince of Denmark, or more simply Hamlet, is a tragedy by William Shakespeare, believed to have been written between 1599 and 1601. The play, set in Denmark, recounts how Prince Hamlet exacts revenge on his uncle Claudius for murdering the old King Hamlet, Claudius's own brother and Prince Hamlet's father, and then succeeding to the throne and marrying Gertrude, the King Hamlet's widow and mother of Prince Hamlet"
end

Factory.define(:hitchhicker, :class => :book) do |book|
  book.author "Douglas Adam"
  book.title "HitchHicker's Guide"
  book.price 22
  book.image "/images/hitchhickers_guide.jpg"
  book.description "The Hitchhiker's Guide to the Galaxy is a science fiction comedy series created by English writer, dramatist and musician Douglas Adams. Originally a radio comedy broadcast on BBC Radio 4 in 1978, it was later adapted to other formats, and over several years it gradually became an international multi-media phenomenon. "
end

Factory.define(:railsway, :class => :book) do |book|
  book.author "Obie Fernandez"
  book.title "The Rails Way"
  book.price 29
  book.image "/images/railsway.jpg"
  book.description "Ruby on Rails strips complexity from the development process, enabling professional developers to focus on what matters most: delivering business value. Now, for the first time, there’s a comprehensive, authoritative guide to building production-quality software with Rails. Pioneering Rails developer Obie Fernandez and a team of experts illuminate the entire Rails API, along with the Ruby idioms, design approaches, libraries, and plug-ins that make Rails so valuable. Drawing on their unsurpassed experience, they address the real challenges development teams face, showing how to use Rails’ tools and best practices to maximize productivity and build polished applications users will enjoy."
end

Factory.define(:jython, :class => :book) do |book|
  book.author "Leo Soto"
  book.title "Jython"
  book.price 27
  book.image "/images/jython.jpg"
  book.description "Jython is an open source implementation of the high-level, dynamic, object-oriented scripting language Python seamlessly integrated with the Java platform. The predecessor to Jython, JPython, is certified as 100% Pure Java. Jython is freely available for both commercial and noncommercial use and is distributed with source code. Jython is complementary to Java."
end

Factory.define(:book) do |book|
  book.author "James Joyce"
  book.title "Ulysses"
  book.price 25
  book.image "/images/ulysse.jpg"
  book.description "Ulysses is a novel by the Irish author James Joyce, first serialised in parts in the American journal The Little Review from March 1918 to December 1920, then published in its entirety by Sylvia Beach on 2 February 1922, in Paris. One of the most important works of Modernist literature,[1] it has been called ... "
end

Factory.define(:war_and_peace, :class => :book) do |book|
  book.author "Leo Tolstoy"
  book.title "War and Peace"
  book.price 29
  book.image "/images/war_and_peace.jpg"
  book.description "A Russian novel by Leo Tolstoy, is considered one of the greatest works of fiction and a literary giant of the 19th century. It is regarded, along with Anna Karenina (1873–1877), as his finest literary achievement."
end
