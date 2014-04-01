dataSource {
    pooled = true
    driverClassName = "com.mysql.jdbc.Driver"
    dialect = "org.hibernate.dialect.MySQL5InnoDBDialect"
   
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}
// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "create-drop" // one of 'create', 'create-drop', 'update', 'validate', ''
            url = "jdbc:mysql://localhost/sec-treasurer2?useUnicode=yes&characterEncoding=UTF-8"
	    username = "root"
            password = "mathandfis"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:mysql://localhost/sec-treasurer-prod2?useUnicode=yes&characterEncoding=UTF-8"
            username = "root"
            password = "mathandfis"
        }
    }
    production {
        dataSource {
            dbCreate = "update"
            url = "jdbc:mysql://localhost/sec-treasurer-prod2?useUnicode=yes&characterEncoding=UTF-8"
            username = "root"
            password = "mathandfis"
            
        }
    }
}
