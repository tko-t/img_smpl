require 'trollop'
module Cli
  def options
    Trollop::options do
      version ImgSmpl::VERSION
      opt :width,  'option width',  :default => 200
      opt :height,  'option width',  :default => 200
      opt :name, 'optioh name', :default => "img"
      opt :count, 'optioh couunt', :default => 1
      opt :output, 'output path', :default => "./"
      opt :ext, 'output extention', :default => "png"
    end
  end
end
