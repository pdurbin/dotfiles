# $Id$
# Authority: REPOFORGE_COMMITTER
# Upstream: UPSTREAMTAG

%define perl_vendorlib %(eval "`perl -V:installvendorlib`"; echo $installvendorlib)
%define perl_vendorarch %(eval "`perl -V:installvendorarch`"; echo $installvendorarch)

%define real_name File-LinkDir

%define perl_prefix %{buildroot}%{_prefix}

Summary: Create links in one directory for files in another
Name: perl-File-LinkDir
Version: 1.02
Release: 1%{?dist}
License: Artistic/GPL
Group: Applications/CPAN
URL: http://search.cpan.org/dist/File-LinkDir/

Source: http://search.cpan.org/CPAN/authors/id/M/MM/MMUSGROVE/File-LinkDir-%{version}.tar.gz
BuildRoot: %{_tmppath}/%{name}-%{version}-%{release}-root
BuildArch: noarch

BuildRequires: perl

%description
By default, File::LinkDir will create symlinks in the destination directory for all top-level files, directories or symlinks found in the source directory. This is very useful for keeping the dot files in your $HOME under version control.

%prep
%setup -n %{real_name}-%{version}

%build
%{__perl} Makefile.PL INSTALLDIRS="vendor" PREFIX="%{perl_prefix}"
%{__make} %{?_smp_mflags}

%install
%{__rm} -rf %{buildroot}
%{__make} pure_install

%clean
%{__rm} -rf %{buildroot}

%files
%defattr(-, root, root, 0755)
#%doc Changes META.yml META.json README
%doc Changes META.yml README
%doc %{_mandir}/man?/*
#%{perl_vendorlib}/NAMEDIR.pm
%{perl_vendorlib}/File/LinkDir.pm
%{_bindir}/*
%exclude %{perl_vendorarch}/auto/*/*/.packlist

%changelog
* Sun May 20 2012 Philip Durbin <philipdurbin@gmail.com> - 
- Initial package.
