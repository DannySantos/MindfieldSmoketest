a = Question.create!(
  text: "What would you like to learn?", 
  receiver: "consumer"
)

b = Question.create!(
  text: "What device would you like to use?", 
  receiver: "consumer"
)

c = Question.create!(
  text: "Which best describes your teaching area??", 
  receiver: "expert"
)

d = Question.create!(
  text: "Which of these would you be interested in?", 
  receiver: "expert"
)

Answer.create!([
  {text: "Guitar", question_id: a.id},
  {text: "Hairstyle Tips", question_id: a.id},
  {text: "Best clothes for your body", question_id: a.id},
  {text: "Yoga", question_id: a.id},
  {text: "Pilates", question_id: a.id},
  {text: "Language", question_id: a.id},
  {text: "Desktop Computer", question_id: b.id},
  {text: "Mobile", question_id: b.id},
  {text: "Professional services", question_id: c.id},
  {text: "Health", question_id: c.id},
  {text: "Language", question_id: c.id},
  {text: "Music", question_id: c.id},
  {text: "Science and Tech", question_id: c.id},
  {text: "Lifestyle", question_id: c.id},
  {text: "Other", question_id: c.id},
  {text: "How to make great videos for YouTube", question_id: d.id},
  {text: "How to sell live video classes", question_id: d.id}
])

