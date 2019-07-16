#!/usr/bin/env python

import sys
import toscript

class Completer(object):
    """docstring for Completer"""
    def __init__(self):
        super(Completer, self).__init__()
        self.goer = toscript.ToGoer()

    def completion_hook(self, cmd, curr_word, prev_word):
        if not self.goer.exists_toscriptdir():
            print('\nNo directory \'{0}\'\n'.format(self.goer.toscriptdir))
            return []
        elif not self.goer.has_scripts_toscriptdir():
            print('\nNo scripts found in \'{0}\'\n'.format(self.goer.toscriptdir))
            return []
        elif prev_word == 'to' or prev_word == '--test':
            potential_matches = self.goer.toscripts_basenames
        else:
            potential_matches = []
        matches = [k for k in potential_matches if k.startswith(curr_word)]
        return matches

def main():
    completer = Completer()
    results = completer.completion_hook(*sys.argv[1:])
    if len(results):
          print('\n'.join(results))

if __name__ == "__main__":
    main()