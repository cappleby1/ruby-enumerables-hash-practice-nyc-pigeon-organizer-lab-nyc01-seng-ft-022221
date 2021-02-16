require "pry"


def nyc_pigeon_organizer(data)
  # write your code here!
  
  list = {}
  
  default_hash = {
    :color => [],
    :gender => [],
    :lives => []
  }
  
  data.each do |attribute, val|
    data[attribute].each do |key, value|
      #puts "#{key} and #{value}"
      data[attribute][key].each do |name|
        #puts "#{key} and #{name}"
        #binding.pry
        if list.key?(name) == false
          temp_hash = default_hash.clone
          list[name] = {:color => [], :gender => [], :lives => []}
        end
        #binding.pry
        list[name][attribute].push(key.to_s)
        #binding.pry
      end
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

pigeon_data1 = {
  "Theo" => {
    :color => ["purple", "grey"],
    :gender => ["male"],
    :lives => ["Subway"]
  },
  "Peter Jr." => {
    :color => ["purple", "grey"],
    :gender => ["male"],
    :lives => ["Library"]
  },
  "Lucky" => {
    :color => ["purple"],
    :gender => ["male"],
    :lives => ["Central Park"]
  },
  "Ms. K" => {
    :color => ["grey", "white"],
    :gender => ["female"],
    :lives => ["Central Park"]
  },
  "Queenie" => {
    :color => ["white", "brown"],
    :gender => ["female"],
    :lives => ["Subway"]
  },
  "Andrew" => {
    :color => ["white"],
    :gender => ["male"],
    :lives => ["City Hall"]
  },
  "Alex" => {
    :color => ["white", "brown"],
    :gender => ["male"],
    :lives => ["Central Park"]
  }
}


puts nyc_pigeon_organizer(pigeon_data)
puts nyc_pigeon_organizer(pigeon_data1)