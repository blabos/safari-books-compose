#!/bin/bash

## Args
if [ $# -lt 1 ]; then
  echo 1>&2 -e "$0: missing book ID\nUsage:\n\t$0 BOOK_ID\n"
  exit 2
fi

## Download
BOOK_ID=$1
python3 safaribooks.py --kindle $BOOK_ID

## Convert
EPUB_PATH=$(find Books -iname "$BOOK_ID.epub")
MOBI_PATH=$(echo $EPUB_PATH | sed "s/$BOOK_ID\.epub$/$BOOK_ID.mobi/g")
ebook-convert "$EPUB_PATH" "$MOBI_PATH"
