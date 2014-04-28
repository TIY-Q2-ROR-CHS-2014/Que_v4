class HomeController < ApplicationController
  # respond_to :html

  def index
    @people_in_que = Que.where.not(workflow_state: "completed")
    @people_who_are_inifintely_smarter_then_they_were_before_but_still_cant_spell = Que.where(workflow_state: "completed")
    # respond_with @people_in_que
  end
end
