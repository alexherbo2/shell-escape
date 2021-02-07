module ShellEscape
  extend self

  def escape(string)
    "'" + string.gsub("'", %('"'"')) + "'"
  end

  def escape(*strings)
    escape(strings)
  end

  def escape(strings : Iterable)
    strings.map do |string|
      escape(string)
    end.join(" ")
  end
end
