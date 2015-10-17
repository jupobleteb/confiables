# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
 ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
    inflect.irregular 'calidad', 'calidades'
    inflect.irregular 'laboral', 'laborales'
    inflect.irregular 'direccion', 'direcciones'
    inflect.irregular 'habilidad', 'habilidades'
    inflect.irregular 'ubicacion', 'ubicaciones'
    inflect.irregular 'experiencia', 'experiencias'
    inflect.irregular 'categoria', 'categorias'
    inflect.irregular 'perfil', 'perfiles'


#   inflect.uncountable %w( fish sheep )
end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end