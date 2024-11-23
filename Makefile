upload:
	rsync -avz \
		--exclude=".svelte-kit" \
		--exclude="node_modules" \
		--exclude=".github" \
		--exclude=".git" \
		--exclude="build" \
		-e "ssh -p <PORT> -i ~/.ssh/<SSH_PRIVATE_KEY>" \
		./ <USER>@<IP_ADDRESS>:<PATH_TO_DIR>

upload-deploy:
	rsync -avz \
		--exclude=".svelte-kit" \
		--exclude="node_modules" \
		--exclude=".github" \
		--exclude=".git" \
		--exclude="build" \
		-e "ssh -p <PORT> -i ~/.ssh/<SSH_PRIVATE_KEY>" \
		./ <USER>@<IP_ADDRESS>:<PATH_TO_DIR>
		
	ssh -p <PORT> -i ~/.ssh/<SSH_PRIVATE_KEY>" \
		<USER>@<IP_ADDRESS> \
		"cd <PATH_TO_DIR>; /home/<USER>/.npm-packages/bin/pnpm i; /home/<USER>/.npm-packages/bin/pnpm build; /home/<USER>/.npm-packages/bin/pm2 restart server.js --update-env"

deploy:
	ssh -p <PORT> -i ~/.ssh/<SSH_PRIVATE_KEY>" \
		<USER>@<IP_ADDRESS> \
		"cd <PATH_TO_DIR>; /home/<USER>/.npm-packages/bin/pnpm i; /home/<USER>/.npm-packages/bin/pnpm build; /home/<USER>/.npm-packages/bin/pm2 restart server.js --update-env"