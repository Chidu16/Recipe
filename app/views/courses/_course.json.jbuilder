json.extract! course, :id, :CourseType, :created_at, :updated_at
json.url course_url(course, format: :json)
