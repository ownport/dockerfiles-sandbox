# Scrapy dockerfile

Requirements:

- Ubuntu Trusty, 
- python 2.7, 
- scrapy:latest

## how to run

```sh
$ docker run -i --rm -t --name scrapy -v <path-to-scrapy-projects>:/data scrapy /data/run-as.sh ${USER} ${UID} /bin/bash
```

## Links

- [Scrapy](http://scrapy.org/) An open source and collaborative framework for extracting the data you need from websites. In a fast, simple, yet extensible way. 
- [Scrapy documentation](http://scrapy.org/doc/)


