#!/usr/bin/env python2.7

import importlib

def main():
    for x in xrange(1, 101):
        module = importlib.import_module('libs.module{}'.format(x))
        getattr(module, 'method{}'.format(x))()


if __name__ == '__main__':
    main()
