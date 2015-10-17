# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Sla.create(sla_id: 1 ,nombre: 'Puntualidad', descripcion: 'Los trabajos se cumplen en la fecha establecida', porcentajeImportacia:'30' ,activo: 'S')
Sla.create(sla_id: 2,nombre: 'Horario llegada', descripcion: 'Llega a la hora', porcentajeImportacia:'30' ,activo: 'S')
Sla.create(sla_id: 3,nombre: 'Prolijidad', descripcion: 'Hace el trabajo de manera limpia', porcentajeImportacia:'30' ,activo: 'S')
Sla.create(sla_id: 4,nombre: 'Calidad de entrega', descripcion: 'Entrega un buen trabajo', porcentajeImportacia:'30' ,activo: 'S')
Sla.create(sla_id: 5,nombre: 'Calidad de Comunicacion', descripcion: 'Se comunica constantemente con el cliente', porcentajeImportacia:'30' ,activo: 'S')
Sla.create(sla_id: 6,nombre: 'Coordialidad', descripcion: 'Su actitud es amigable y respetuosa', porcentajeImportacia:'30' ,activo: 'S')

Comuna.create(comuna_id: 13101	,nombre: 'Santiago'            , region: 'Metropolitana de Santiago', pais: 'Chile' )    
Comuna.create(comuna_id: 13102	,nombre: 'Cerrillos'           , region: 'Metropolitana de Santiago', pais: 'Chile' )     
Comuna.create(comuna_id: 13103	,nombre: 'Cerro Navia'         , region: 'Metropolitana de Santiago', pais: 'Chile' )       
Comuna.create(comuna_id: 13104	,nombre: 'Conchalí'            , region: 'Metropolitana de Santiago', pais: 'Chile' )    
Comuna.create(comuna_id: 13105	,nombre: 'El Bosque'           , region: 'Metropolitana de Santiago', pais: 'Chile' )     
Comuna.create(comuna_id: 13106	,nombre: 'Estación Central'    , region: 'Metropolitana de Santiago', pais: 'Chile' )            
Comuna.create(comuna_id: 13107	,nombre: 'Huechuraba'          , region: 'Metropolitana de Santiago', pais: 'Chile' )      
Comuna.create(comuna_id: 13108	,nombre: 'Independencia'       , region: 'Metropolitana de Santiago', pais: 'Chile' )         
Comuna.create(comuna_id: 13109	,nombre: 'La Cisterna'         , region: 'Metropolitana de Santiago', pais: 'Chile' )       
Comuna.create(comuna_id: 13110	,nombre: 'La Florida'          , region: 'Metropolitana de Santiago', pais: 'Chile' )      
Comuna.create(comuna_id: 13111	,nombre: 'La Granja'           , region: 'Metropolitana de Santiago', pais: 'Chile' )     
Comuna.create(comuna_id: 13112	,nombre: 'La Pintana'          , region: 'Metropolitana de Santiago', pais: 'Chile' )      
Comuna.create(comuna_id: 13113	,nombre: 'La Reina'            , region: 'Metropolitana de Santiago', pais: 'Chile' )    
Comuna.create(comuna_id: 13114	,nombre: 'Las Condes'          , region: 'Metropolitana de Santiago', pais: 'Chile' )      
Comuna.create(comuna_id: 13115	,nombre: 'Lo Barnechea'        , region: 'Metropolitana de Santiago', pais: 'Chile' )        
Comuna.create(comuna_id: 13116	,nombre: 'Lo Espejo'           , region: 'Metropolitana de Santiago', pais: 'Chile' )     
Comuna.create(comuna_id: 13117	,nombre: 'Lo Prado'            , region: 'Metropolitana de Santiago', pais: 'Chile' )    
Comuna.create(comuna_id: 13118	,nombre: 'Macul'               , region: 'Metropolitana de Santiago', pais: 'Chile' ) 
Comuna.create(comuna_id: 13119	,nombre: 'Maipú'               , region: 'Metropolitana de Santiago', pais: 'Chile' ) 
Comuna.create(comuna_id: 13120	,nombre: 'Ñuñoa'               , region: 'Metropolitana de Santiago', pais: 'Chile' ) 
Comuna.create(comuna_id: 13121	,nombre: 'Pedro Aguirre Cerda' , region: 'Metropolitana de Santiago', pais: 'Chile' )               
Comuna.create(comuna_id: 13122	,nombre: 'Peñalolén'           , region: 'Metropolitana de Santiago', pais: 'Chile' )     
Comuna.create(comuna_id: 13123	,nombre: 'Providencia'         , region: 'Metropolitana de Santiago', pais: 'Chile' )       
Comuna.create(comuna_id: 13124	,nombre: 'Pudahuel'            , region: 'Metropolitana de Santiago', pais: 'Chile' )    
Comuna.create(comuna_id: 13125	,nombre: 'Quilicura'           , region: 'Metropolitana de Santiago', pais: 'Chile' )     
Comuna.create(comuna_id: 13126	,nombre: 'Quinta Normal'       , region: 'Metropolitana de Santiago', pais: 'Chile' )         
Comuna.create(comuna_id: 13127	,nombre: 'Recoleta'            , region: 'Metropolitana de Santiago', pais: 'Chile' )    
Comuna.create(comuna_id: 13128	,nombre: 'Renca'               , region: 'Metropolitana de Santiago', pais: 'Chile' ) 
Comuna.create(comuna_id: 13129	,nombre: 'San Joaquín'         , region: 'Metropolitana de Santiago', pais: 'Chile' )       
Comuna.create(comuna_id: 13130	,nombre: 'San Miguel'          , region: 'Metropolitana de Santiago', pais: 'Chile' )      
Comuna.create(comuna_id: 13131	,nombre: 'San Ramón'           , region: 'Metropolitana de Santiago', pais: 'Chile' )     
Comuna.create(comuna_id: 13132	,nombre: 'Vitacura'            , region: 'Metropolitana de Santiago', pais: 'Chile' )    
Comuna.create(comuna_id: 13201	,nombre: 'Puente Alto'         , region: 'Metropolitana de Santiago', pais: 'Chile' )       
Comuna.create(comuna_id: 13202	,nombre: 'Pirque'              , region: 'Metropolitana de Santiago', pais: 'Chile' )  
Comuna.create(comuna_id: 13203	,nombre: 'San José de Maipo'   , region: 'Metropolitana de Santiago', pais: 'Chile' )             
Comuna.create(comuna_id: 13301	,nombre: 'Colina'              , region: 'Metropolitana de Santiago', pais: 'Chile' )  
Comuna.create(comuna_id: 13302	,nombre: 'Lampa'               , region: 'Metropolitana de Santiago', pais: 'Chile' ) 
Comuna.create(comuna_id: 13303	,nombre: 'Tiltil'              , region: 'Metropolitana de Santiago', pais: 'Chile' )  
Comuna.create(comuna_id: 13401	,nombre: 'San Bernardo'        , region: 'Metropolitana de Santiago', pais: 'Chile' )        
Comuna.create(comuna_id: 13402	,nombre: 'Buin'                , region: 'Metropolitana de Santiago', pais: 'Chile' )
Comuna.create(comuna_id: 13403	,nombre: 'Calera de Tango'     , region: 'Metropolitana de Santiago', pais: 'Chile' )           
Comuna.create(comuna_id: 13404	,nombre: 'Paine'               , region: 'Metropolitana de Santiago', pais: 'Chile' ) 
Comuna.create(comuna_id: 13501	,nombre: 'Melipilla'           , region: 'Metropolitana de Santiago', pais: 'Chile' )     
Comuna.create(comuna_id: 13502	,nombre: 'Alhué'               , region: 'Metropolitana de Santiago', pais: 'Chile' ) 
Comuna.create(comuna_id: 13503	,nombre: 'Curacaví'            , region: 'Metropolitana de Santiago', pais: 'Chile' )    
Comuna.create(comuna_id: 13504	,nombre: 'María Pinto'         , region: 'Metropolitana de Santiago', pais: 'Chile' )       
Comuna.create(comuna_id: 13505	,nombre: 'San Pedro'           , region: 'Metropolitana de Santiago', pais: 'Chile' )     
Comuna.create(comuna_id: 13601	,nombre: 'Talagante'           , region: 'Metropolitana de Santiago', pais: 'Chile' )     
Comuna.create(comuna_id: 13602	,nombre: 'El Monte'            , region: 'Metropolitana de Santiago', pais: 'Chile' )    
Comuna.create(comuna_id: 13603	,nombre: 'Isla de Maipo'       , region: 'Metropolitana de Santiago', pais: 'Chile' )         
Comuna.create(comuna_id: 13604	,nombre: 'Padre Hurtado'       , region: 'Metropolitana de Santiago', pais: 'Chile' )         
Comuna.create(comuna_id: 13605	,nombre: 'Peñaflor'            , region: 'Metropolitana de Santiago', pais: 'Chile' )    

Direccion.create(direccion_id: 1, direccion: 'Apoquindo', numero: 2313, complemento: 'Piso 3 oficina 304', comuna_id: 13114)
Telefono.create(telefono_id: 1, codpais: 56 , codciudad: 02 , numero: 2895342)
