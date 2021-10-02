#!/usr/bin/env python3
from pygments.lexers.data import JsonLexer
from pygments.lexer import *

from pygments.token import (
    Text, Comment, Operator, Keyword, Name, String, 
    Number, Punctuation)

class JsonnetLexer(JsonLexer):
    """
    For Jsonnet data templating
    """
    name = 'Jsonet'
    aliases = ['jsonnet']
    filenames = ['*.jsonnet', '*.libjsonnet']
    mimetypes = ['application/jsonnet']

    tokens = {
        'statements': [
            (words(('local', 'import', 'self', 'null'),
                   suffix=r'\b'), Keyword.Reserved),
        ],

        'root': [
            inherit
        ]
    }
    
