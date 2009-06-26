module AutoEmo
  class Poem
    File.open(File.join(File.dirname(__FILE__), 'poems')) do |f|
      @@poems = Marshal.load(f)
    end

    def self.generate
      length = 4 + rand(7)
      lines = []

      length.times do
        lines << @@poems[rand(@@poems.size)]
      end

      lines.join("\n")
    end
  end
end