json.array!(@evaluations) do |evaluation|
  json.extract! evaluation, :id, :evaluator_email, :evaluatee_email, :assignment_id, :project, :question1, :question2, :question3, :question4, :question5
  json.url evaluation_url(evaluation, format: :json)
end
