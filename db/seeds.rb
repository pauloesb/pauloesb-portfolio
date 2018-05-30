3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end
puts "[Input Seed Data] - 3 Topics created!"

10.times do |blog|
  Blog.create!(
      title: "My Blog Post #{blog}",
      body: Faker::Lorem.paragraph(1),
      topic_id: Topic.last.id
  )
end
puts "[Input Seed Data] - 10 Blog posts created!"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent: 15
  )
end
puts "[Input Seed Data] - 5 Skills created!"

8.times do |porfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{porfolio_item}",
    subtitle: "Ruby on Rails",
    body: Faker::Lorem.paragraph(2),
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
  )
end
puts "[Input Seed Data] - 8 Portfolio items created for Ruby on Rails!"

1.times do |porfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{porfolio_item}",
    subtitle: "Angular",
    body: Faker::Lorem.paragraph(2),
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
  )
end
puts "[Input Seed Data] - 1 Portfolio item created for Angular!"
