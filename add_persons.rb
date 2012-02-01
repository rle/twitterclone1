require 'person'

dhh = Person.new("dhh")
obie = Person.new("obie")
unclebob = Person.new("unclebob")
noob1 = Person.new("noob1")
noob2 = Person.new("noob2")

dhh.add_follower(obie)
dhh.add_follower(unclebob)

obie.add_follower(unclebob)

unclebob.add_follower(noob1)
unclebob.add_follower(noob2)

persons = Maglev::PERSISTENT_ROOT[:persons]

persons << dhh
persons << obie
persons << unclebob

Maglev.commit_transaction
