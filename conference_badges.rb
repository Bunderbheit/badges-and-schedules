#badge_maker
def badge_maker(name)
  "Hello, my name is #{name}."
end

#batch_badge_creator
def batch_badge_creator(speakers)
  speakers.collect do |name|
    badge_maker(name)
  end
end

#assign_rooms
def assign_rooms(speakers)
  room = 0
  speakers.collect do |name|
    room += 1
    "Hello, #{name}! You'll be assigned to room #{room}!"
  end
end

def printer(speakers)
  batch_badge_creator(speakers).each do |room_num|
    puts room_num
  end
  assign_rooms(speakers).each do |room_num|
    puts room_num
  end
end
