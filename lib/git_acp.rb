class GitACP

  def initialize args
    @args = args
  end

  def add_commit_push
    puts "Pushing to #{current_branch}."
    add
    commit
    push
  end

  def add
    puts "Running add."
    `git add .`
  end

  def commit
    puts "Running commit with message: #{@args[0]}"
    `git commit -am "#{@args[0]}"`
  end

  def push
    puts "Running push."
    `git push origin #{current_branch}`
  end

  def current_branch
    `git branch --no-color`.match(/\*\s(.+?)\s/)[1]
  end

end
