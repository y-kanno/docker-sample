# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

run Rails.application

# Unicorn self-process killer
require 'unicorn/worker_killer'

# Max requests per worker
use Unicorn::WorkerKiller::MaxRequests, 10, 20, true

# Max memory size (RSS) per worker
use Unicorn::WorkerKiller::Oom, (378 * (1024**2)), (512 * (1024**2)), 16, true
