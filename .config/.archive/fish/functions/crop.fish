function crop -a original_file new_file_name
    magick $original_file -crop 50%x100% $new_file_name.jpg
end 
