#!/usr/bin/perl

# get ZZ-ELM-MASS and MAT from old IAEA photonuclear data file (see https://www-nds.iaea.org/photonuclear/)
# 27 Jan., 2020. S.Okumura

use warnings;
use strict;

#unlink glob "../std_release_20171228rev1/*~";

my $outfile = "iso-mat.iaea-g19";
my ($a, $z, $elem, $mat);
my @file    = glob "../iaea-photonuclear-2019/data/jendlupdates/*";
#print ( @file ), "\n";

open (OUT, ">$outfile");

foreach my $files (@file){
    open (A, "$files") or die ("file does not exist");
    
    while(<A>){
	if ($. == 6){
	    my $line           =  $_;
#	    print $line;
	    my $ZSYMAM         =  substr($line,0,10);
	    my $mat            =  substr($line,66,4);
#	    print "$ZSYMAM\n";
	    if ($ZSYMAM =~ /[0-9]{1,2}-/){
		my $pos        =    index($&, "-");
		$z             =    substr($&,0,$pos);
	    }
	    if ($ZSYMAM =~ /[A-Z,a-z]{1,2}/){
		$elem          =    $&;
	    }
	    if ($ZSYMAM =~ /[0-9]{1,3}$/){
		$a             =    $&;
	    }
	    #my $z = substr($line,0,3);
	    #my $a = substr($line,7,3);
	    print OUT "$z $elem $a $mat $files\n";
	}
    }
    close(A);
}

