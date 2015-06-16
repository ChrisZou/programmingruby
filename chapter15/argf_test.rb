#!/usr/bin/env ruby -w
while line=gets
    printf "file: %s, line: %d, content: %s", ARGF.filename, ARGF.file.lineno, line
end
