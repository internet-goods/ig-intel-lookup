mkdir $(date -I)
echo test fortiguard is active
cd $(date -I)
for i in {1..100}; do wget "https://fortiguard.fortinet.com/wftest/${i}.html" && sleep 1; done
echo https://www.fortiguard.com/sample-files
wget https://filestore.fortinet.com/fortiguard/test-files/ml/ai_sample1
sleep 3
wget https://filegen.fortinet.com/v1/sandbox-file?file_name=windows.exe
sleep 3
wget https://filegen.fortinet.com/v1/sandbox-file?file_name=linux.elf
sleep 3
wget https://filegen.fortinet.com/v1/sandbox-file?file_name=linux.sh
sleep 3
wget https://filestore.fortinet.com/fortiguard/test-files/outbreak-prevention/zhvo_test.com
echo confirm tls inspection in cert issuer
curl -vv https://google.com

