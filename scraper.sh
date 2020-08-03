#!/usr/bin/env bash
# This is a custom web scraper that will create an archive with a timestamp + MD5 hash. :)
# sincera

#echo "Enter target website, including it's subdomain..."
#echo "Example: www.target.com"
#  read target
#  this has been removed to streamline the script.
echo "Scraping $1..."
  prefix=$(date +'%m%d%Y')
  wget -r -p -np -k $1
echo "Scrape complete. Archiving contents..."
  tar -cf $prefix-$target.tar $1
  gzip -v -9 -r -k *-$1.tar
echo "Contents saved into current working directory."
echo "Creating MD5 hash..."
  md5 *.tar.gz >> $prefix-$1.md5
echo "Removing temporary files.."
  rm *.tar
  rm -rf $1
echo "Finished! $1 has been scraped and archived with today's date."
