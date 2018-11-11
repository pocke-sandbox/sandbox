require 'securerandom'

branch = "test-#{SecureRandom.hex(10)}"
system "git checkout -b #{branch}", exception: true
system "echo p 1 >> test.rb", exception: true
system "git add .", exception: true
system "git commit -m 'test'", exception: true
system "git push origin #{branch}", exception: true
system "hub pull-request --labels=MergeCat -m 'test for #{branch}'", exception: true
