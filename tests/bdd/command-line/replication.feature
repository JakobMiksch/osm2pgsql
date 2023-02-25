Feature: Tests for the osm2pgsql-replication script

    Scenario: Help can be called

        When running osm2pgsql-replication
            | -h |
