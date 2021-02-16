def nyc_pigeon_organizer(data)
  # write your code here!
  
  list = {}
  
  default_hash = {
    :color => [],
    :gender => [],
    :lives => []
  }
  
  data[:color].each do |key, value|
    puts data[:color][key]
    data[:color][key].each do |name|
      puts "test"
      if list.include? name == false
        list[name] = default_hash
      end
      list[name][:color] = key
    end
  end
  
  
  
  
  
  
  
  
  
  return list
  
end

pigeon_data = {
  :color => {
    :brown => ["Luca"],
    :black => ["Lola"],
  },
  :gender => {
    :male => ["Luca"],
    :female => ["Lola"]
  },
  :lives => {
    "Central Park" => ["Lola"],
    "Library" => ["Luca"]
  }
}

puts nyc_pigeon_organizer(pigeon_data)