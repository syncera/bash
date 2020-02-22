#!/usr/bin/env bash
# This is a custom web scraper that will create an archive with a timestamp + MD5 hash. :)
# SL
echo "Enter target website, including it's subdomain..."
echo "Example: www.target.com"
  read target
echo "Scraping $target..."
  prefix=$(date +'%m%d%Y')
  wget -r -p -np -k $target
echo "Scrape complete. Archiving contents..."
  tar -cf $prefix-$target.tar $target
  gzip -v -9 -r -k *-$target.tar
echo "Contents saved into current working directory."
echo "Creating MD5 hash..."
  md5 *.tar.gz >> $prefix-$target.md5
echo "Removing temporary files.."
  rm *.tar
  rm -rf $target
echo "Finished! $target has been scraped and archived with today's date."
