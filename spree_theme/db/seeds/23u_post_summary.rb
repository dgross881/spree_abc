
post_summary = Spree::Section.create_section(section_piece_hash['container'], {:title=>"post summary",:content_param=>100})
   
post_summary.add_section_piece(section_piece_hash['post-summary'])
