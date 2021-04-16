# Setup
```
./setup.sh
```

# Load Sample Data
```
./load-sample.kennedy.sh
```

Now can see the data loaded into the GUI. Can explore using SPARQL by clicking on "View Triples" from the repository view page:


Or also view on Gruff by clicking on "Explore repository in Gruff" from the repository view page:


# Execute using SPARQL Queries over http
A convenient scripts can execute arbitrary sparql queries.
- CREDIT: script examples copied from or based on https://franz.com/agraph/support/documentation/current/agraph-quick-start.html

```
cd sparql-queries/http/
./execute-GET-mykennedy-sparql.sh ../sparql/harvard-alums.rq
```

If you want to simplify further, and know what keys your SPARQL json has, you can do something like this:
```
# for returned keys x and p:
./execute-GET-mykennedy-sparql.sh ../sparql/harvard-alums.rq | jq "[.x.value, .p.value]"
```

For more examples, see https://franz.com/agraph/support/documentation/current/sparql-tutorial.html
- queries for SOME of those examples, using foaf and example.com namespaces, are found in `./sparql-queries/sparql/foaf-example/`. Note that these commands are not idempotent
- make sure you use `./execute-POST-mykennedy-sparql.sh` though when executing INSERTs or UPDATES

# Import from Bitcoin server (UNTESTED)

Using example from https://github.com/franzinc/agraph-examples, which we have conveniently as a submodule in this repo

```
./load-sample.bitcoin.sh	
```


