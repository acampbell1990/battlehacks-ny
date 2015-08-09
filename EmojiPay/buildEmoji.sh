#!/bin/sh
cd /Users/Matt/git/battlehacks-ny/EmojiPay
mvn clean install
cd /Users/Matt/Documents/Servers/apache-tomcat-7.0.57/webapps
./../bin/shutdown.sh
rm -rf Emoticon*
cp /Users/Matt/git/battlehacks-ny/EmojiPay/target/EmoticonPayments.war .
./../bin/startup.sh
