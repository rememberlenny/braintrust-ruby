# frozen_string_literal: true

require_relative "../test_helper"

class Braintrust::Test::Resources::PromptTest < Test::Unit::TestCase
  def setup
    @braintrust = Braintrust::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_create_required_params
    response = @braintrust.prompt.create(
      {name: "string", project_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", slug: "string"}
    )
    assert_kind_of(Braintrust::Models::Prompt, response)
  end

  def test_retrieve
    response = @braintrust.prompt.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
    assert_kind_of(Braintrust::Models::Prompt, response)
  end

  def test_update
    response = @braintrust.prompt.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
    assert_kind_of(Braintrust::Models::Prompt, response)
  end

  def test_list
    response = @braintrust.prompt.list 
    assert_kind_of(Braintrust::ListObjects, response)
  end

  def test_delete
    response = @braintrust.prompt.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
    assert_kind_of(Braintrust::Models::Prompt, response)
  end

  def test_feedback_required_params
    response = @braintrust.prompt.feedback(
      "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
      {feedback: [{"id" => "string"}, {"id" => "string"}, {"id" => "string"}]}
    )
    assert_nil(response)
  end

  def test_replace_required_params
    response = @braintrust.prompt.replace(
      {name: "string", project_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", slug: "string"}
    )
    assert_kind_of(Braintrust::Models::Prompt, response)
  end
end
