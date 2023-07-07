

#https://stackoverflow.com/questions/27099427/jekyll-filename-without-date

class Jekyll::PostReader
  # Don't use DATE_FILENAME_MATCHER so we don't need to put those stupid dates
  # in the filename. Also limit to just *.markdown, so it won't process binary
  # files from e.g. drags.
  def read_posts(dir)
    read_publishable(dir, "_posts", /.*\.md$/)
  end
  def read_drafts(dir)
    read_publishable(dir, "_drafts", /.*\.md$/)
  end
end


### default 

# Read all the files in <source>/<dir>/_drafts and create a new
# Document object with each one.
#
# dir - The String relative path of the directory to read.
#
# Returns nothing.
#def read_drafts(dir)
#  read_publishable(dir, "_drafts", Document::DATELESS_FILENAME_MATCHER)
#end

# Read all the files in <source>/<dir>/_posts and create a new Document
# object with each one.
#
# dir - The String relative path of the directory to read.
#
# Returns nothing.
#def read_posts(dir)
#  read_publishable(dir, "_posts", Document::DATE_FILENAME_MATCHER)
#end
