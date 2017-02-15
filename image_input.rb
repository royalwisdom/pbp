def photoize(text)
  text_length = text.length
  i = 0
  j = 0

  for i in 0..text_length -1
    if text.at(i..i+1) == "::"
      j = i + 2                     #first letter inside the double colon

  #loop until the other ::
    until text.at(k..k+1) == "::"
      k = k + 1
    end
    l = k - 1                     #last letter inside the double colon

    image = text.at(j..l)
    text.at(i..k+1) = article.attributes["#{image}"]

  end
end

#html.erb line 
<%=raw @article.image_1 %>

rails generate migration AddDetailsToArticle image_1:text image_2:text image_3:text image_4:text image_5:text 
