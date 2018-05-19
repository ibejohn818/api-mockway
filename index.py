#!/usr/bin/env python

def handler(evt, ctx):
    print(evt)
    print(ctx)
    return {
            'Body': 'test',
            'Status': '200'
    }
