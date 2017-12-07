worker_processes 1

pid '/var/run/unicorn.pid'
listen '/share/unicorn.sock'

timeout 60

stdout_path './log/unicorn.stdout.log'
stderr_path './log/unicorn.stderr.log'
