class GitACP

  def current_branch
    `git branch --no-color`.match(/\*\s(.+?)\s/)[1]
  end

end
