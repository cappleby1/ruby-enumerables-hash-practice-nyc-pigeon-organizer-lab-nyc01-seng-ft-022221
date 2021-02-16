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
        puts list
      end
      #binding.pry
      list[name][:color].push(key)
    end
    
  end
  
  
  
  
  
  
  
  
  
  #return list
  
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