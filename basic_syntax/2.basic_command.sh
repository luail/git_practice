# 현재 working directory, staging area 상태 확인
git status

# . : 모든 수정 및 추가사항을 의미
git add .

git add 특정파일(경로포함)

# commit을 통해 메시지타이틀과 메시지내용을 커밋이력으로 생성
git commit -m "메시지타이틀" -m "메시지내용"

# git commit만 하고 엔터 실행시 vi모드
# 첫줄 : title, 두번쨰줄부터 contents
git commit

# add와 commit을 동시에
git commit -am "커밋메시지"

# commit 이력 확인(local repository의 이력)
git log

# log내용을 1줄로 간결하게
git log --oneline

# 커밋이력을 그래프 형태로 조회
git log --graph

# head하단의 로그만 보이는것이 아니라, 모든 log 조회
# head는 현재 체크아웃하고 있는 커밋을  가리킨다.
git log --all

# 원격저장소로 업로드
git push origin 브랜치명

# 충돌발생시 무시하고 강제 push, 로컬커밋 기준으로 원격 덮어쓰기.
git push origin main --force

# pull은 원격의 커밋사항을 local로 다운로드(working directory까지 반영)
git pull origin main

# 특정 commit ID로 수정.
git checkout 커밋ID

# working directory작업 및 staging area에서의 취소는 UI로 대체

# 가장 최신의 커밋 취소
git reset head~1
git reset head^1

# 버전별(commitID간, branch간) 비교 명령어 : diff
# A를 기준으로 B가 어떤 변경이 있는지를 비교
git diff A B
git diff commitID1 commitID2
git diff 브랜치1 브랜치2

# 브랜치생성
# 현재 checkout하고 있는 브랜치를 기준으로 새로운  브랜치 생성
git branch 브랜치명

# 브랜치 전환
git checkout 브랜치명

# 브랜치 목록 조회
git branch

# origin 브랜치까지 포함하여 조회
git branch --all

# 브랜치생성과 전환을 동시에
git checkout -b 브랜치명

# local 브랜치 삭제(feat1)
git branch -D 브랜치명

# git fetch : 원격의 변경사항을 local에 가져오되, 병합은 하지 않는것.
# 비교 : git pull origin main vs git fetch origin main

# 원격에서 삭제된 브랜치 로컬에 반영(origin/feat1)
git fetch --all --prune
# 모든 원격 브랜치정보 fetch
git fetch --all

# 작업중(working directory)인 사항을 임시저장
git stash