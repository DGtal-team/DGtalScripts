#
# spec file for package DGtal 
#
# Copyright (c) 2017 Kacper Pluta <kacper.pluta@esiee.fr>
#
# All modifications and additions to the file contributed by third parties
# remain the property of their copyright owners, unless otherwise agreed
# upon. The license for this file, and modifications and additions to the
# file, is the same license as for the pristine package itself (unless the
# license for the pristine package is not an Open Source License, in which
# case the license is the MIT License). An "Open Source License" is a
# license that conforms to the Open Source Definition (Version 1.9)
# published by the Open Source Initiative.

# Please submit bugfixes or comments via https://github.com/DGtal-team/DGtal/issues
#

Name:           libDGtal
Version:        0.9.4.1
Release:        0
License:        LGPL-3.0
Summary:        Digital Geometry Tools and Algorithms 
Url:            http://dgtal.org 
Group:          Productivity/Scientific/Other 
Source:         DGtal-%{version}.tar.gz

BuildRequires:  cmake
BuildRequires:  pkgconfig 
BuildRequires:  gcc
BuildRequires:  gcc-c++
BuildRequires:  boost-devel >= 1.46.0
BuildRequires:  zlib-devel
BuildRequires:  gmp-devel
%if 0%{?leap_version}
BuildRequires:  eigen3-devel >= 3.2.1
%else
BuildRequires:  libeigen3-devel >= 3.2.1
%endif
BuildRoot:      %{_tmppath}/%{name}-%{version}-build

%description
DGtal is a generic open source library for Digital Geometry programming for which the main objective
is to structure different developments from the digital geometry and topology community.
The aims are numerous: make easier the appropriation of our tools for a neophyte (new PhD students,
researchers from other topics,...), permit better comparisons from new methods with already existing
approaches and to construct a federative project. Another objective of DGtal is to simplify the
construction of demonstration tools to share new results and potential efficiency of the proposed
work.

%package devel
Summary:        DGtal header files for building C++ code
Group:          Development/Libraries/Other
BuildRequires:  boost-devel >= 1.46.0
Requires:       %{name} = %{version}
%if 0%{?leap_version}
Requires:       eigen3-devel >= 3.2.1
%else
Requires:       libeigen3-devel >= 3.2.1
%endif
Requires:       gmp-devel

%description devel
DGtal is a generic open source library for Digital Geometry programming for which the main objective
is to structure different developments from the digital geometry and topology community. The aims
are numerous: make easier the appropriation of our tools for a neophyte (new PhD students,
researchers from other topics,...), permit better comparisons from new methods with already existing
approaches and to construct a federative project. Another objective of DGtal is to simplify the
construction of demonstration tools to share new results and potential efficiency of the proposed
work.

This provides the DGtal header files required to compile C++ programs that use DGtal.

%prep
%setup -q -n DGtal-%{version}

%build
export CFLAGS="%{optflags}"
export CXXFLAGS="%{optflags}"

mkdir build
pushd build
cmake .. \
    -DCMAKE_CXX_COMPILER:string=g++ \
    -DCMAKE_C_COMPILER:string=gcc \
    -DCMAKE_INSTALL_PREFIX:path=%{_prefix} \
    -DINSTALL_LIB_DIR:string=%{_libdir} \
    -DBUILD_EXAMPLES:BOOL=OFF \
    -DBUILD_SHARED_LIBS:BOOL=ON \
    -DBUILD_TESTING:BOOL=OFF \
    -DWITH_EIGEN:string=true \
    -DWITH_GMP:string=true \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_CXX_FLAGS:string=-std=c++11

make %{?_smp_mflags} VERBOSE=1

%install
pushd build
%make_install

%post   -p /sbin/ldconfig
%postun -p /sbin/ldconfig


%files
%defattr(-,root,root)
%{_libdir}/libDGtal.so
%doc ChangeLog.md README.md LICENSE AUTHORS

%files devel
%defattr(-,root,root,-)
%{_datadir}/DGtal
%exclude %{_includedir}/DGtal/doc
%{_includedir}/Board
%{_includedir}/DGtal
# CMake
%{_prefix}/lib/DGtal

%changelog

* Fri Apr 6 2018 - kacper.pluta (at) esiee.fr
- Update to version 0.9.4.1

* Tue Jan 24 2017 - kacper.pluta (at) esiee.fr
- Update to version 0.9.3

* Tue Jan 12 2016 - kacper.pluta (at) esiee.fr
- Update to version 0.9.1
