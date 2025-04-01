require 'csv'

# EngineerTypes のシードデータ
CSV.foreach(Rails.root.join('db/csv/engineer_type.csv'), headers: true) do |row|
  EngineerType.create!(
    name: row['name'],
    description: row['description'],
    technical_skill: row['technical_skill'],
    problem_solving_ability: row['problem_solving_ability'],
    communication_skill: row['communication_skill'],
    security_awareness: row['security_awareness'],
    leadership_and_collaboration: row['leadership_and_collaboration'],
    learning_and_adaptability: row['learning_and_adaptability']
  )
end

# Questions のシードデータ
CSV.foreach(Rails.root.join('db/csv/question.csv'), headers: true) do |row|
  Question.create!(
    text: row['text'],
    technical_skill: row['technical_skill'],
    problem_solving_ability: row['problem_solving_ability'],
    communication_skill: row['communication_skill'],
    security_awareness: row['security_awareness'],
    leadership_and_collaboration: row['leadership_and_collaboration'],
    learning_and_adaptability: row['learning_and_adaptability']
  )
end

# Users のシードデータ
CSV.foreach(Rails.root.join('db/csv/user.csv'), headers: true) do |row|
  user = User.new(
    name: row['name'],
    email: row['email'],
    technical_skill: row['technical_skill'],
    problem_solving_ability: row['problem_solving_ability'],
    communication_skill: row['communication_skill'],
    security_awareness: row['security_awareness'],
    leadership_and_collaboration: row['leadership_and_collaboration'],
    learning_and_adaptability: row['learning_and_adaptability'],
    engineer_type_id: row['engineer_type']
  )
  user.save!
end
