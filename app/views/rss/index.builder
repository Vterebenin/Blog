xml.instruct!
xml.rss version: '2.0', 'xmlns:atom' => 'http://www.w3.org/2005/Atom' do

  xml.channel do
    xml.title 'Ternow'
    xml.description 'Ruby on rails developer blog'
    xml.link root_url
    xml.language 'en'
    xml.tag! 'atom:link', rel: 'self', type: 'application/rss+xml', href: 'rss'

    for post in @posts
      xml.item do
        xml.title post.title
        xml.link post_url(post)
        xml.pubDate(post.created_at.rfc2822)
        xml.guid post_url(post)
        xml.description(h(post.body))
      end
    end

  end

end