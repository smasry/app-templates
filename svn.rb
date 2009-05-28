# When using calling rails you must have the 
# branch or trunk checked out and you must call
# rails with the --svn option
run "svn add --force ."
run "svn revert log/*"
run "svn propset svn:ignore '*' log"
run "svn revert config/database.yml"
run "mv config/database.yml config/database.yml.sample"
run "svn propset svn:ignore 'database.yml' config"
run "cp config/database.yml.sample config/database.yml"
run "svn propset svn:ignore 'schema.rb' db"
run "svn propset svn:ignore '*' tmp"
run "svn propset svn:ignore '*' doc"
run "svn propset svn:executable '*' `find script -type f | grep -v '.svn'`"
run "svn propset svn:executable '*' `find script/performance -type f | grep -v '.svn'`"
run "svn revert public/index.html"
run "rm public/index.html"
