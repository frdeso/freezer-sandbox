echo "Lauching tcp rediction from HOST:22222 to GUEST:22 for ssh login"
echo "e.g. ssh user@localhost -p 22222"
qemu-system-x86_64 \
		-machine freezer=off \
		-smp 	cpus=1\
		-enable-kvm  \
		-drive file=debian_wheezy_i386_standard.qcow2,if=ide,cache=none\
		-m 1024 \
		-redir 	tcp:22222::22 \
		-rtc 	clock=vm,driftfix=none \
		-nographic \
		-trace 	events=dummy-events.txt 
#,if=virtio,media=disk,aio=threads \
#		-curses
