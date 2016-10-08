# Inspec macOS
[![Build Status](https://travis-ci.org/pwelch/inspec_macOS.svg?branch=master)](https://travis-ci.org/pwelch/inspec_macOS)

Security checks for macOS using the [InSpec](http://inspec.io/) Auditing and testing framework.

## Usage
```
# Check
inspec check profile/

# Run
inspec exec profile
```

## Setup
Install [InSpec](https://downloads.chef.io/inspec/mac/) OR Install [ChefDK](https://downloads.chef.io/chef-dk/mac/)

## References

Checks are pulled from the following sources:
- [CIS Benchmark OSX 10.11](https://benchmarks.cisecurity.org/tools2/osx/CIS_Apple_OSX_10.11_Benchmark_v1.0.0.pdf)
- [NIST OSX 10.10](http://csrc.nist.gov/publications/drafts/800-179/sp800_179_draft.pdf)
