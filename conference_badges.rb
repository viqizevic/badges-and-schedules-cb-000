# Write your code here.

def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  attendees.map { |attendee| badge_maker(attendee) }
end

def assign_rooms(attendees)
  assigned = []
  attendees.each_with_index do |attendee, index|
    assigned << "Hello, #{attendee}! You'll be assigned to room #{index+1}!"
  end
  assigned
end

def printer(attendees)
  batch_badge_creator(attendees).each { |badge| puts badge }
  assign_rooms(attendees).each { |room| puts room }
end
