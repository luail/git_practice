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