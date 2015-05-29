# anduril-moksiskaan

Dockerfile and build context for Moksiskaan version 2.05 (2014-07-22) on top of  [anduril-base](https://github.com/Gig77/anduril-base). The Dockerfile does not populate the Moksiskaan database from scratch but imports a database dump, which is part of this repository.

# Components

* Debian Wheezy (7.8)
* Anduril 1.2.23
* Version 2.05 (2014-07-22)
* Hibernate version 4.3.5.Final
* Moksiskaan installation directory: `/opt/moksiskaan`
* psql (PostgreSQL) 9.1.16

# Additional features

* Passwordless login with user `anduril` (sudoer)
* Entrypoint to automatically start the PostgreSQL database daemon upon login 
