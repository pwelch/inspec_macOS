# encoding: utf-8

title 'Checks from CIS'

# 1 Install Updates, Patches and Additional Security Software
control 'cis-benchmark-osx-1.1' do
  impact 1.0
  title 'Verify all application software is current'
  desc 'It is important that updates be applied in a timely manner to prevent exploits.'
  ref 'https://benchmarks.cisecurity.org/tools2/osx/CIS_Apple_OSX_10.10_Benchmark_v1.0.0.pdf'

  # The command's output is actually stderr
  # /usr/sbin/softwareupdate -l 1> /dev/null
  describe command('/usr/sbin/softwareupdate -l') do
    its('stderr') { should match /(No new software available.)/ }
  end
end

# 2 System Preferences
control '2.1.2 Disable Bluetooth "Discoverable" mode when not pairing devices' do
  impact 1.0
  title 'Disable Bluetooth "Discoverable" mode when not pairing devices'
  desc 'Bluetooth is particularly susceptible to a diverse set of security vulnerabilities.'
  ref 'https://benchmarks.cisecurity.org/tools2/osx/CIS_Apple_OSX_10.10_Benchmark_v1.0.0.pdf'

  only_if do
    command('defaults read /Library/Preferences/com.apple.Bluetooth ControllerPowerState').stdout.match(/1/)
  end

  # TODO: Figure out how to have Bluetooth On but Discoverable Off in macOS 10.11+
  describe command('/usr/sbin/system_profiler SPBluetoothDataType | grep  -i discoverable') do
    its('stdout') { should match /Discoverable: Off/ }
  end
end
