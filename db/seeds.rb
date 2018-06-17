if ENV.fetch('RAILS_ENV') == "development"

  puts "[Input Seed Data] - Rails Env -- DEVELOPMENT"

  User.create!(
    email: "admin@portfolio.com",
    password: "123456",
    password_confirmation: "123456",
    name: "Admin User",
    roles: "site_admin"
  )
  puts "[Input Seed Data] - 1 Admin user created!"

  User.create!(
    email: "user@portfolio.com",
    password: "123456",
    password_confirmation: "123456",
    name: "Regular User"
  )
  puts "[Input Seed Data] - 1 Regular user created!"

  3.times do |topic|
    Topic.create!(
      title: "Topic #{topic}"
    )
  end
  puts "[Input Seed Data] - 3 Topics created!"

  10.times do |blog|
    Blog.create!(
      title: "My Blog Post #{blog}",
      subtitle: "Subtitle from Blog #{blog}",
      body: Faker::Lorem.paragraph(50),
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

  3.times do |technology|
    Portfolio.last.technologies.create!(
      name: "Technology #{technology}",
    )
  end
  puts "[Input Seed Data] - 3 Technology items created!"

elsif ENV.fetch('RAILS_ENV') == "production"

  puts "[Input Seed Data] - Rails Env -- DEVELOPMENT"

  User.create!(
    email: ENV.fetch('APP_EMAIL'),
    password: ENV.fetch('APP_PASSWORD'),
    password_confirmation: ENV.fetch('APP_PASSWORD'),
    name: "Admin User",
    roles: "site_admin"
  )
  puts "[Input Seed Data] - 1 Admin user created!"

  Skill.create!(
    title: "Ruby on Rails",
    percent: 70
  )
  puts "[Input Seed Data] - Ruby on Rails skill created!"

  Skill.create!(
    title: "Java",
    percent: 70
  )
  puts "[Input Seed Data] - Java skill created!"

  Skill.create!(
    title: "Javascript",
    percent: 40
  )
  puts "[Input Seed Data] - Javascript skill created!"

  Skill.create!(
    title: "PostgreSQL / MySQL / Firebird",
    percent: 60
  )
  puts "[Input Seed Data] - PostgreSQL / MySQL / Firebird skill created!"

  Skill.create!(
    title: "Back End Development",
    percent: 70
  )
  puts "[Input Seed Data] - Back end skill created!"

  Skill.create!(
    title: "Front End Development",
    percent: 30
  )
  puts "[Input Seed Data] - Front end skill created!"

  Topic.create!(
    title: "Ruby on Rails"
  )
  puts "[Input Seed Data] - Ruby on Rails topic created!"

  Topic.create!(
    title: "Personal Projects"
  )
  puts "[Input Seed Data] - Personal Projects topic created!"

  Topic.create!(
    title: "Technology"
  )
  puts "[Input Seed Data] - Technology topic created!"

  Topic.create!(
    title: "Software Development"
  )
  puts "[Input Seed Data] - Software Development topic created!"

  Portfolio.create!(
    title: "Paulo Borba's Portfolio",
    subtitle: "Ruby on Rails and Javascript",
    body: "Soon I will write...",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
  )
  puts "[Input Seed Data] - Paulo Borba's Portfolio portfolio created!"

  2.times do |porfolio_item|
    Portfolio.create!(
      title: "Portfolio dummy #{porfolio_item}",
      subtitle: "Angular",
      body: "Portfolio dummy #{portfolio_item}",
      main_image: "http://placehold.it/600x400",
      thumb_image: "http://placehold.it/350x200"
    )
    puts "[Input Seed Data] - Portfolio dummy #{portfolio_item} portfolio created!"
  end
end
