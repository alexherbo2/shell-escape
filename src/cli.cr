require "./shell-escape"

module ShellEscape::CLI
  extend self

  def start(argv)
    puts ShellEscape.escape(argv)
  end
end

ShellEscape::CLI.start(ARGV)
