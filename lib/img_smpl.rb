require "img_smpl/version"
require 'rmagick'
require 'cli'

module ImgSmpl
  include Magick
  include Cli

  def execute
    output = (@options[:output].dup << "/").gsub(/\/+/, '/')

    abort "dosn't exists #{@options[:output]}" unless Dir.exists? output

    w = @options[:width]
    h = @options[:height]
    e = @options[:ext]
    @options[:count].times.each do |idx|
      #a = %(0#{rand(256).to_s(16)})[-2,2]
      r = %(0#{rand(256).to_s(16)})[-2,2]
      g = %(0#{rand(256).to_s(16)})[-2,2]
      b = %(0#{rand(256).to_s(16)})[-2,2]
      rgb = %(##{r << g << b})
      img = Image.new(w, h) {
        self.background_color = "none"
      }
      idr = Draw.new
      idr.fill = rgb
      idr.rectangle(0, 0, w, h)
      idr.draw(img);
      img.write("#{output}#{@options[:name]}_#{idx.to_s}.#{e}")
    end
  end
end
