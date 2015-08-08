#!/bin/sh
cd /Users/rob0229/git/battlehacks-ny/EmojiPay
mvn clean install
cd /Developer/apache-tomcat-7.0.61/webapps
./../bin/shutdown.sh
rm -rf Emoticon*
cp /Users/rob0229/git/battlehacks-ny/EmojiPay/target/EmoticonPayments.war .
./../bin/startup.sh