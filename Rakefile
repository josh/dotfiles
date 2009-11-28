task :default => :install

desc "Install the dot files into user's home directory"
task :install do
  manifest.each do |file|
    source, file = file, File.basename(file)

    puts "linking ~/.#{file}"
    system %Q{ln -fs "$PWD/#{source}" "$HOME/.#{file}"}
  end
end


def manifest
  files = Dir['*']
  files += submanifests
  files -= %w(Rakefile)
  files.sort
end

def submanifests
  files = []
  Dir['*/.dotfiles'].each do |submanifest|
    subdirectory = File.dirname(submanifest)
    lines = File.read(submanifest).split("\n")
    files += lines.map { |file| File.join(subdirectory, file) }
  end
  files
end
