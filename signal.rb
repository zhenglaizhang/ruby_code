# Signal processing

def shut_down
  puts "\nShutting down gracefully..."
  sleep 4
end

puts "I am process #{Process.pid}"

# ^C 
Signal.trap("INT") { 
  shut_down 
  exit 1
}

# `Kill `
Signal.trap("TERM") {
  shut_down
  exit 2
}

# Wait for signal
sleep 10