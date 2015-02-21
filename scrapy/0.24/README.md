# Scrapy dockerfile

Requirements:

- Ubuntu Trusty, 
- python 2.7, 
- scrapy 0.24

## how to run

```sh
$ docker run -i --rm -t --name scrapy -v <path-to-scrapy-projects>:/data scrapy:0.24 /data/run-as.sh ${USER} ${UID} /bin/bash
```

## Links

- [Scrapy](http://scrapy.org/) An open source and collaborative framework for extracting the data you need from websites. In a fast, simple, yet extensible way. 
- [Scrapy 0.24 documentation](http://doc.scrapy.org/en/latest/index.html)


