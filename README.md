# mid_pjt

[사전 환경 설정]
- IAM 보안자격 증명 탭에서 Access Key 생성
$ export AWS_ACCESS_KEY_ID= [키 ID 입력]
$ export AWS_SECRET_ACCESS_KEY= [키 값 입력]

- terraform.io 에 접속하여 Linux 64-bit 다운로드 링크 복사 및 PATH 설정
$ wget https://releases.hashicorp.com/terraform/0.12.29/terraform_0.12.29_linux_amd64.zip
$ unzip terraform_0.12.29_linux_amd64.zip 
$ export PATH=$PATH:~/environment/

- 인스턴스 접속을 위한 공개키 생성
$ cd ~/.ssh
$ ssh-keygen
- 엔터 3번하여 key 생성


[적용 절차]

$ cd ~/environment/mid_pjt
$ terraform init
$ terraform plan
$ terraform apply --auto-approve

[테스트]
- Windows Powershell Script (로드밸런서 DNS 주소(http주소)를 복사하여 wget 이후부터 ;start-sleep 전까지의 http 주소를 치환)
for($i=0;$i -lt 3600;$i++){wget [여기에 로드밸런서 DNS 주소(http로 시작하는 주소) 붙여넣기];start-sleep -Seconds 1}
- 아래 사례 참고
for($i=0;$i -lt 3600;$i++){wget http://user111a-alb-8080-1993274192.us-east-2.elb.amazonaws.com:8080;start-sleep -Seconds 1}
for($i=0;$i -lt 3600;$i++){wget http://user01-alb2-742064812.ap-northeast-2.elb.amazonaws.com;start-sleep -Seconds 1}


[문제점]
