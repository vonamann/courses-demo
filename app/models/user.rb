class User < ApplicationRecord
  has_many :purchases

  def available_courses_obj
    purchases.map do |purchase|
      course = purchase.course
      course = purchase.promo_code.course if course.nil? && purchase.promo_code.present? && purchase.promo_code.course.present?
      course.present? ? { 'id' => course.id, 'title' => course.title } : nil
    end
  end

  def available_lessons_obj(course)
    purchase = purchases.find_by(course_id: course.id)
    if purchase.nil?
      course_promo_codes = PromoCode.where(course_id: course.id)
      if course_promo_codes.count > 0
        purchase = purchases.find_by(promo_code_id: course_promo_codes.map(&:id))
      end
    end
    if purchase.present?
      promo_code = purchase.promo_code
      lessons = promo_code.present? ? course.lessons.limit(promo_code.lesson_limit) : course.lessons
      lessons.map do |lesson|
        obj = { 'id' => lesson.id, 'title' => lesson.title, 'content' => lesson.content }
        obj['available_until'] = Time.now + promo_code.duration.days if promo_code.present? && promo_code.duration.present?
        obj
      end
    else
      nil
    end
  end
end
