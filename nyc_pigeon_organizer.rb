require "pry"


def nyc_pigeon_organizer(data)
  # write your code here!
  
  list = {}
  
  default_hash = {
    :color => [],
    :gender => [],
    :lives => []
  }
  
  data[:color].each do |key, value|
    
    data[:color][key].each do |name|
      puts "#{key} and #{name}"
      #binding.pry
      if list.key?(name) == false
        list[name] = default_hash
      end
      #binding.pry
      list[name][:color].push(key)
    end
    
  end
  
  
  
  
  
  
  
  
  
  return list
  
end


pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

puts nyc_pigeon_organizer(pigeon_data)