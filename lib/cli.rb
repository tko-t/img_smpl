require 'trollop'
module Cli
  def options
    Trollop::options do
      opt :width,  'option width',  :default => 200
      opt :height,  'option width',  :default => 200
      opt :name, 'optioh name', :default => "img"
      opt :count, 'optioh couunt', :default => 1
      opt :output, 'output path', :default => "./"
    end
  end
end
