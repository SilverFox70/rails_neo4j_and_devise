## A Starter Using Rails, Devise, and Neo4j

- Ruby version 2.6.3
- Rails version 5.2.3
- Neo4j - community latest is accessed

This is a very simple app that demonstrates using Devise via the 'devise-neo4j' gem.
What you see here is what you get if you follow the sample app instructions at
https://github.com/neo4jrb/devise-neo4j

If you rather try to use this repo as a starting point for a project, then:
- clone or copy the repo `git clone https://github.com/SilverFox70/rails_neo4j_and_devise.git`
- `gem install neo4j-rake_tasks`
- `bundle install`
- `rake neo4j:install[community-latest]` Not totally necessary if the gem files loaded...
- `rake neo4j:start`
- `rails s`

Visit `localhost:7474` to see the Neo4j browser/dashboard

Visit `localhost:3000` to test your login/sign up.

## Stopping Neo4j
As a helpful reminder, to avoid future frustration whenever you are using Neo4j,
always be sure to also shut down the Neo4j server when you exit out of rails.

`rake neo4j:stop`

Should you forget to do this and find yourself using `kill -9` to stop
the process, you may find that you cannot restart the server due to error something
like the following:

`db/neo4j/development/run/neo4j.pid: No such file or directory
rake aborted!
Unable to run: db/neo4j/development/bin/neo4j start`

You will then need to navigate down into the development directory where you will find 
there is no "run" directory.  Go ahead and `mkdir run`, `cd dun` and finally
`touch neo4j.pid`. You should be able to start the neo4j server again. 

## Deleting the Database

if you need to wipe out the db to start with, then from the root do:

``` bash
rm -rf db/neo4j/development/data/databases/graph.db
```


## Building an app from here

Scaffolding is a quick way to generate resources:

`rails g scaffold Post title:string body:string`

This will scaffold the resource the same way as any Rails application except
that the models will be <b>ActiveNode</b> models, not <b>ActiveRecord</b> models.

https://cloud.githubusercontent.com/assets/10566194/17498100/141725cc-5d7a-11e6-9000-5ab6b3b2ba73.png



Please feel free to use a different markup language if you do not plan to run
`rake doc:app`.
