File.open("./resources/GeoLiteCity-Location.csv", "r") do |infile|
  while (line = infile.gets)
    city_info = line.split(",")
    puts city_info
  end
end

