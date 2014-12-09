echo "Lauching tcp rediction from HOST:22222 to GUEST:22 for ssh login"
echo "e.g. ssh user@localhost -p 22222"
qemu-system-x86_64 \
		-smp 	cpus=1,cores=1,threads=1 \
		-enable-kvm  \
		-drive file=debian_wheezy_amd64_standard.qcow2,aio=native \
		-m 1024 \
		-redir 	tcp:22222::22 \
		-rtc 	clock=vm,driftfix=none \
		-trace 	events=dummy-events.txt \
		-nographic
#,if=virtio,media=disk,aio=threads \
#		-curses
