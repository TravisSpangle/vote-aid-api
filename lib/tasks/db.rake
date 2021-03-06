namespace :db do
  namespace :seed do
    desc "seed location data"
    task locations: :environment do
      Location.create( title: 'Auburn Library'                            , latitude: 47.298546000000002 , longitude: -122.217974)
      Location.create( title: 'Muckleshoot Tribe - Philip Starr Building' , latitude: 47.251322000000002  , longitude: -122.11505699999999)
      Location.create( title: 'Bellevue Regional Library'                 , latitude: 47.620505000000001  , longitude: -122.19387)
      Location.create( title: 'Crossroads Shopping Center'                , latitude: 47.617823000000001  , longitude: -122.13048999999999)
      Location.create( title: 'Bothell City Hall '                        , latitude: 47.761398           , longitude: -122.205778)
      Location.create( title: 'City of Burien - Town Square Par'          , latitude: 47.466929           , longitude: -122.340283)
      Location.create( title: 'Covington Library'                         , latitude: 47.359054999999998  , longitude: -122.122187)
      Location.create( title: 'Highline College '                         , latitude: 47.386702           , longitude: -122.299812)
      Location.create( title: 'Enumclaw Library'                          , latitude: 47.20337            , longitude: -121.987577)
      Location.create( title: 'Federal Way City Hall'                     , latitude: 47.304012999999998  , longitude: -122.325462)
      Location.create( title: 'Issaquah City Hall'                        , latitude: 47.530220999999997  , longitude: -122.034622)
      Location.create( title: 'Kentridge High School'                     , latitude: 47.41619            , longitude: -122.171761)
      Location.create( title: 'Regional Justice Center'                   , latitude: 47.385182999999998  , longitude: -122.23893700000001)
      Location.create( title: 'Kingsgate Library'                         , latitude: 47.729748000000001  , longitude: -122.176596)
      Location.create( title: 'Kirkland City Hall'                        , latitude: 47.677923           , longitude: -122.206913)
      Location.create( title: 'Lake Forest Park City Hall'                , latitude: 47.753886999999999  , longitude: -122.27773999999999)
      Location.create( title: 'Tahoma School District Building'           , latitude: 47.371392           , longitude: -122.02206200000001)
      Location.create( title: 'Algona-Pacific Library'                    , latitude: 47.271594           , longitude: -122.253872)
      Location.create( title: 'Redmond City Hall'                         , latitude: 47.679152999999999  , longitude: -122.130253)
      Location.create( title: 'Fairwood Library'                          , latitude: 47.450491999999997  , longitude: -122.154726)
      Location.create( title: 'King County Elections'                     , latitude: 47.467624000000001  , longitude: -122.230395)
      Location.create( title: 'Renton Public Health Center '              , latitude: 47.494866000000002  , longitude: -122.175326)
      Location.create( title: 'Sammamish City Hall'                       , latitude: 47.601298           , longitude: -122.03633000000001)
      Location.create( title: 'Valley View Library'                       , latitude: 47.443081999999997  , longitude: -122.27352999999999)
      Location.create( title: 'Ballard Branch Library'                    , latitude: 47.669986000000002  , longitude: -122.38466)
      Location.create( title: 'Beacon Hill Library'                       , latitude: 47.577876000000003  , longitude: -122.311893)
      Location.create( title: 'Broadview Library'                         , latitude: 47.723097000000003  , longitude: -122.356291)
      Location.create( title: 'Chinatown Uwajimaya'                       , latitude: 47.596947           , longitude: -122.32647)
      Location.create( title: 'Green Lake Community Center'               , latitude: 47.680486999999999  , longitude: -122.32827)
      Location.create( title: 'High Point Library'                        , latitude: 47.548195           , longitude: -122.37562200000001)
      Location.create( title: 'Lake City Library'                         , latitude: 47.720080000000003  , longitude: -122.297875)
      Location.create( title: 'King County Administration Building'       , latitude: 47.602896000000001  , longitude: -122.32967600000001)
      Location.create( title: 'NewHolly Campus of Learners'               , latitude: 47.539118000000002  , longitude: -122.2909093)
      Location.create( title: 'Rainier Community Center '                 , latitude: 47.561566999999997  , longitude: -122.28468700000001)
      Location.create( title: 'Seattle Central College '                  , latitude: 47.617482000000003  , longitude: -122.320995)
      Location.create( title: 'Skyway Library'                            , latitude: 47.490704999999998  , longitude: -122.238575)
      Location.create( title: 'South Park Library'                        , latitude: 47.526175000000002  , longitude: -122.322801)
      Location.create( title: 'University of Washington - Schmitz Hal'    , latitude: 47.656765           , longitude: -122.31286799999999)
      Location.create( title: 'White Center Library'                      , latitude: 47.506914999999999  , longitude: -122.352816)
      Location.create( title: 'Shoreline Library'                         , latitude: 47.755400000000002  , longitude: -122.325014)
      Location.create( title: 'Snoqualmie Library '                       , latitude: 47.529913999999998  , longitude: -121.87253200000001)
      Location.create( title: 'Vashon Library'                            , latitude: 47.450746000000002  , longitude: -122.45971900000001)
      Location.create( title: 'Woodinville Library'                       , latitude: 47.751787999999998  , longitude: -122.081847)
    end
  end
end
