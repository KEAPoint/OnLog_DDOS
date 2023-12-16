# Terraform AWS EC2 인스턴스 생성

이 프로젝트는 Terraform을 사용하여 여러 Region에 AWS EC2 인스턴스를 생성하고, 
각 EC2 인스턴스는 Node.js 스크립트를 실행하여 지정된 시간에 대상 로드 밸런서에 대량의 트래픽을 생성합니다.

## 준비 사항

1. AWS 계정을 생성하고, AWS Access Key ID와 Secret Access Key를 준비합니다.
2. AWS에서 사용할 키 페어를 생성합니다.
3. Terraform이 설치되어 있어야 합니다.

## 사용 방법

1. 환경 변수를 설정하여 AWS 계정 정보를 제공합니다:
```bash
export AWS_ACCESS_KEY_ID="your_access_key"
export AWS_SECRET_ACCESS_KEY="your_secret_key"

export AWS_ACCESS_KEY_ID="AKIAZFEQRMP3Y762DDNG"
export AWS_SECRET_ACCESS_KEY="I1n9e72qTh2+rfKKdHLgunXAmFS9lIjSRbo97Hj6"
```

2. Terraform을 초기화합니다
```bash
terraform init
```

3. 실행할 변경 사항을 확인합니다
```bash
terraform plan
```

4. 변경 사항을 적용합니다
```bash
terraform apply
```