class GitACP

  def initialize args
    @args = args
  end

  def add_commit_push
    puts "Pushing to #{@args[0]}"
    add
    commit
    push
  end

  def add
    `git add .`
  end

  def commit
    `git commit -am #{@args[0]}`
  end

  def push
    `git push origin #{current_branch}`
  end

  def current_branch
    `git branch --no-color`.match(/\*\s(.+?)\s/)[1]
  end

end
