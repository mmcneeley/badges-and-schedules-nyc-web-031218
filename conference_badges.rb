require "pry"
attendees = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]

def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  badge_messages = []
  attendees.each do |person|
    badge_messages << badge_maker(person)
  end
  badge_messages
end

def assign_rooms(attendees)
  speakers = attendees.size
  rooms = (1..speakers).to_a
  room_assignments = []
  attendees.each_with_index do |person, x|
    room_assignments << "Hello, #{person}! You'll be assigned to room #{rooms[x]}!"
  end
  room_assignments
end

def printer(attendees)

  attendees.each_with_index do |person, x|
    batch_badge_creator(attendees)
    assign_rooms(attendees)
    binding.pry
  end
end
