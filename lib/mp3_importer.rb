class MP3Importer

  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    Dir.glob("#{@path}/*mp3").map do |file|
      file.gsub("#{@path}", "")
    end
  end
  
  def import
    imported_files = self.files
    imported_files.each do |file|
      new_song = Song.new_by_filename(file)
    end
  end

end