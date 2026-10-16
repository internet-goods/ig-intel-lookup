mkdir $(date -I)
cd $(date -I)
wget https://urlfiltering.paloaltonetworks.com/test-malware
wget https://urlfiltering.paloaltonetworks.com/test-grayware
wget https://urlfiltering.paloaltonetworks.com/test-adult
wget https://urlfiltering.paloaltonetworks.com/test-inline-url-analysis-grayware
echo https://docs.paloaltonetworks.com/advanced-url-filtering/administration/configuring-url-filtering/test-url-filtering-configuration
echo Malware
wget http://urlfiltering.paloaltonetworks.com/test-inline-url-analysis-malware
echo Phishing
wget http://urlfiltering.paloaltonetworks.com/test-inline-url-analysis-phishing
echo C2
wget http://urlfiltering.paloaltonetworks.com/test-inline-url-analysis-command-and-control
echo Grayware
wget http://urlfiltering.paloaltonetworks.com/test-inline-url-analysis-grayware
echo If Cloud Inline Categorization is enabled, use the following URLs to test the operation of the feature:
echo Malware
wget http://urlfiltering.paloaltonetworks.com/test-inline-content-analysis-malware
echo Phishing
wget http://urlfiltering.paloaltonetworks.com/test-inline-content-analysis-phishing
echo Grayware
wget http://urlfiltering.paloaltonetworks.com/test-inline-content-analysis-grayware
echo Parked
wget http://urlfiltering.paloaltonetworks.com/test-inline-content-analysis-parked
echo Adult
wget http://urlfiltering.paloaltonetworks.com/test-inline-content-analysis-adult
