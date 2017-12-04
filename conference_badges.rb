
# here is my array of attendees
attendees = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]

# simple method that takes an argument of name
def badge_maker(name)
  "Hello, my name is #{name}."
end

# takes attendees as an argument and returns an array of badge messages
def batch_badge_creator(attendees)
  attendees.map do |attendee|
    "Hello, my name is #{attendee}."
  end
end
# this method takes attendees as an argument and assigs each to a room.
def assign_rooms(attendees)
  attendees.each_with_index.map do |attendee, index|
    "Hello, #{attendee}! You'll be assigned to room #{index+1}!"
  end
end

# this method will print out the first results of each method to the screen
def printer(attendees)
  batch_badge_creator(attendees).each do |badge|
    puts badge
  end

  assign_rooms(attendees).each do |assignment|
    puts assignment
  end
end
