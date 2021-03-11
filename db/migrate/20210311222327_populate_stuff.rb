class PopulateStuff < ActiveRecord::Migration[6.1]
  def up
    # Populating users
    # User.create(id: 1, name: 'John Doe', email: 'john.doe@example.com')
    # User.create(id: 2, name: 'Jack Doe', email: 'jack.doe@example.com')
    # User.create(id: 3, name: 'Jane Doe', email: 'jane.doe@example.com')
    
    # Populating courses & lessons
    # Course.create(id: 1, title: 'Ruby on Rails', topic: 'programming')
    # Course.create(id: 2, title: 'Python',        topic: 'programming')
    # Course.create(id: 3, title: 'Javascript',    topic: 'programming')

    # Lesson.create(id: 1, course_id: 1, title: 'Intro',        content: 'Ruby on Rails. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer semper tellus ac lorem semper, in faucibus nibh ornare. Fusce eu suscipit mi. Praesent odio nulla, molestie vel bibendum vel, sodales non lacus.')
    Lesson.create(id: 2, course_id: 1, title: 'ActiveRecord', content: 'Ruby on Rails. Ut mi sapien, sollicitudin eget dolor quis, aliquet aliquet quam. Fusce vel pellentesque velit, sed dignissim libero. Donec ac sem eget lectus sodales porttitor vel vitae felis. Morbi elementum nulla neque, eget aliquam ligula auctor a.')
    Lesson.create(id: 3, course_id: 1, title: 'Routing',      content: 'Ruby on Rails. Nulla gravida metus in tortor commodo, quis auctor velit euismod. Proin sit amet neque accumsan urna feugiat fringilla. Mauris luctus eu neque sed hendrerit.')
    Lesson.create(id: 4, course_id: 2, title: 'Intro',        content: 'Python. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer semper tellus ac lorem semper, in faucibus nibh ornare. Fusce eu suscipit mi. Praesent odio nulla, molestie vel bibendum vel, sodales non lacus.')
    Lesson.create(id: 5, course_id: 2, title: 'Interpreter',  content: 'Python. Ut mi sapien, sollicitudin eget dolor quis, aliquet aliquet quam. Fusce vel pellentesque velit, sed dignissim libero. Donec ac sem eget lectus sodales porttitor vel vitae felis. Morbi elementum nulla neque, eget aliquam ligula auctor a.')
    Lesson.create(id: 6, course_id: 2, title: 'Modules',      content: 'Python. Nulla gravida metus in tortor commodo, quis auctor velit euismod. Proin sit amet neque accumsan urna feugiat fringilla. Mauris luctus eu neque sed hendrerit.')

    # Populating promo-codes
    PromoCode.create!(id: 1, code: 'FOOBAR', course_id: 2, lesson_limit: 2, duration: 10)

    # Populating purchases
    Purchase.create!(id: 1, user_id: 1, course_id: 1)
    Purchase.create!(id: 2, user_id: 1, promo_code_id: 1)
  end

  def down
    # raise ActiveRecord::IrreversibleMigration
  end
end
