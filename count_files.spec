Name:           count_files
Version:        1.0
Release:        1
Summary:        A script to count files in /etc directory

License:        GPL
URL:            http://example.com
Source0:        count_files.sh

BuildArch:      noarch

%description
This script counts the number of files (excluding directories and symlinks) in the /etc directory.

%prep
# No preparation needed for this simple package.

%install
mkdir -p /home/runner/rpmbuild/BUILDROOT/%{NAME}-%{VERSION}-%{RELEASE}.x86_64/usr/local/bin
cp %{SOURCE0} /home/runner/rpmbuild/BUILDROOT/%{NAME}-%{VERSION}-%{RELEASE}.x86_64/usr/local/bin/count_files.sh

%files
/usr/local/bin/count_files.sh
