
include SpreeTheme::SectionPieceParamHelper
bool_false = Spree::HtmlAttribute::BOOL_FALSE
bool_true =  Spree::HtmlAttribute::BOOL_TRUE

#dialog width, height, 
#section_piece = Spree::SectionPiece.find 'slider'
#unless section_piece.section_piece_params.exists?( :class_name=>'title' )
#  slides =  { "editor_id"=>2,  "class_name"=>"slides", "pclass"=>"css", "param_category_id"=>20,  "html_attribute_ids"=>"78,79"}
#  create_section_piece_param( section_piece, slides)
#end
Spree::Section.where(:title=>'Grouped option values selector').each(&:destroy)

section_piece_hash= Spree::SectionPiece.all.inject({}){|h,sp| h[sp.slug] = sp; h}

logo = Spree::Section.create_section(section_piece_hash['container'].id, {:title=>"grouped option values selector"},
  {'block'=>{'disabled_ha_ids'=>'111'}, 'inner'=>{'15hidden'=>bool_true}})

logo.add_section_piece(section_piece_hash['grouped-option-values-selector'].id)