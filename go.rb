rewrites = File.open('rewrite').read.split("\n")
posts    = File.open('posts.txt').read.split("\n")

posts.zip(rewrites).each do |post, rewrite|
  y = post[0..3]
  m = post[5..6]
  d = post[8..9]
  title = post[11..-4]
  puts "#{rewrite} http://bricestacey.com/#{y}/#{m}/#{d}/#{title}.html permanent"
end
