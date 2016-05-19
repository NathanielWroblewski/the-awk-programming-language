#!/bin/bash
#
# exercise 3-18
#   Modify the first awk program to detect occurrences of the magic string
#   !!# in the data

awk '
  BEGIN { RS = ""; FS = "\n" }

/(^!!#)/  {
            print 'WAHOO'
            printf("%s!!#", x[split($1, x, " ")])
            for (i = 1; i <= NF; i++)
              printf("%s%s", $i, i < NF ? "!!#" : "\n")
          }
' | sort
#| awk '
#  BEGIN { FS = "!!#" }
#
#        {
#          for (i = 2; i <= NF; i++)
#            printf("%s\n", $i)
#          printf("\n")
#        }
#'
