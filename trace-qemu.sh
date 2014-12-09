lttng create --snapshot

lttng enable-channel --userspace --subbuf-size 2M channel0

lttng enable-event "kvm_userspace_exit" -k
lttng enable-event "kvm_userspace_entry" -k
#lttng enable-event "kvm_set_irq" -k
lttng enable-event "kvm_mmio" -k
#lttng enable-event "kvm_ioapic_set_irq" -k
#lttng enable-event "kvm_msi_set_irq" -k
#lttng enable-event "kvm_ack_irq " -k

#lttng enable-event -a -k
#lttng enable-event -a --syscall -k

#lttng enable-event "qemu:apic*" -u -c channel0
#lttng enable-event "qemu:block_job_cb" -u -c channel0
#lttng enable-event "qemu:bdrv*" -u -c channel0
#lttng enable-event "qemu:cpu_*" -u -c channel0
#lttng enable-event "qemu:dma*" -u -c channel0
lttng enable-event "qemu:freezer*" -u -c channel0
#lttng enable-event "qemu:freezer_kcd*" -u -c channel0
lttng enable-event "qemu:global_mutex*" -u -c channel0
lttng enable-event "qemu:kvm*" -u -c channel0
#lttng enable-event "qemu:memory_region_ops_write" -u -c channel0
#lttng enable-event "qemu:memory_region_ops_read" -u -c channel0
##lttng enable-event "qemu:qemu_co_mutex_*" -u -c channel0
#lttng enable-event "qemu:qcow2*" -u -c channel0
#lttng enable-event "qemu:paio*" -u -c channel0
lttng enable-event "qemu:point_*" -u -c channel0
#lttng enable-event "qemu:savevm*" -u -c channel0
#lttng enable-event "qemu:scsi*" -u -c channel0
#lttng enable-event "qemu:sleep_*" -u -c channel0
#lttng enable-event "qemu:thread_*" -u -c channel0
lttng enable-event "qemu:io_req_on_port" -u -c channel0
#
##lttng enable-event "qemu:virtio*" -u
#lttng enable-event "qemu:vmstate*" -u -c channel0

lttng add-context -t vtid -u
lttng start
