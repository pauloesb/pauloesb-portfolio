10.times do |blog|
  Blog.create!(
      title: "My Blog Post #{blog}",
      body: Faker::Lorem.paragraph(1)
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

9.times do |porfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{porfolio_item}",
    subtitle: "My great service",
    body: Faker::Lorem.paragraph(2),
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
  )
end
puts "[Input Seed Data] - 9 Portfolio items created!"
