echo "merging your latest changes to main branch"
git checkout main
git pull origin main
git merge rel/1.0 --no-ff -m "Merge rel/1.0 to main"
git push origin HEAD:main --force

echo "Building Documentation V1.0 ..."
	git checkout rel/1.0
	git pull origin rel/1.0
	
    # git fetch --tags --force
	# git tag -f v9.5
	# git push -f origin v9.5
	# git checkout tags/v9.5
	
# mike deploy --push --update-aliases 1.0 latest -t 1.0
mike deploy --push 1.0 -t 1.0
# mike set-default --push latest 

git checkout rel/1.0