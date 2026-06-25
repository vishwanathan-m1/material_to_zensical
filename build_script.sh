echo "merging your latest changes to main branch"
git checkout main
git pull origin main
git merge rel/2.0 --no-ff -m "Merge rel/2.0 to main"
git push origin HEAD:main --force

echo "Building Documentation V2.0 ..."
	git checkout rel/2.0
	git pull origin rel/2.0
		
mike deploy --push --update-aliases 2.0 latest -t 2.0


git checkout rel/2.0