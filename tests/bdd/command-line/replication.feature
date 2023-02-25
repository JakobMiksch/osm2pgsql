Feature: Tests for the osm2pgsql-replication script

    Scenario: Help can be called

        When running osm2pgsql-replication
            | -h |

    Scenario: Replication can be initialiased

        Given the input file 'liechtenstein-2013-08-03.osm.pbf'
        When running osm2pgsql pgsql with parameters
            | --slim |

        Then table planet_osm_point has 1342 rows
        And table planet_osm_line has 3231 rows
        And table planet_osm_roads has 375 rows
        And table planet_osm_polygon has 4130 rows

        When running osm2pgsql-replication
            | init | --osm-file=/home/jakob/Repos/osm2pgsql/tests/data/liechtenstein-2013-08-03.osm.pbf |

        # When running osm2pgsql-replication
        #     | --help |

        # TODO: OSM File referenzieren


