File.open("./resources/GeoLiteCity-Location.csv", "r") do |infile|
  while (link = infile.gets)
    infos = link.gsub(",")
    puts infos.length
  end
end
