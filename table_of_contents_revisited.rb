

chapters = []
chapters << {

  title: "Chapter 1",
  page:  1
}

chapters << {
    title: "Chapter 2",
    page:  9
}

chapters << {
    title: "Chapter 3",
    page:  13
}

line_width = 50

heading = "Table of Contents"

puts heading.center(line_width)

chapters.each do |chapter|
  title = chapter[:title].ljust(line_width - 7)
  page = "page " + chapter[:page].to_s
  puts title + page
end
