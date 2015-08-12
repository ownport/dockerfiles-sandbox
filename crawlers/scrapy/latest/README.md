# Scrapy dockerfile

Requirements:

- Ubuntu Trusty, 
- python 2.7, 
- scrapy:latest

## how to run

```sh
$ cd ${SCRAPY_PROJECTS}
$ docker run -ti --rm --name scrapy -v $(pwd)/projects:/data/projects/ scrapy 
```

## Links

- [Scrapy](http://scrapy.org/) An open source and collaborative framework for extracting the data you need from websites. In a fast, simple, yet extensible way. 
- [Scrapy documentation](http://scrapy.org/doc/)


