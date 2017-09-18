docker run --name drops --link drops-mongo:mongo --link drops-mariadb:mariadb -p 9000:9000 -d vivaconagua/drops:0.15.8 \
-Dplay.evolutions.db.default.autoApply=true \
-Dconfig.resource=application.conf \
-Dmongodb.uri=mongodb://mongo/drops \
-Dslick.dbs.default.db.url=jdbc:mysql://mariadb/drops 
