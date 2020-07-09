#!/usr/bin/perl

use File::Compare;
use File::Basename;

$j=0;

=pod
open(OUT, ">result.dat");
my @file         =  glob '../data/g-iaea-pd-2019/*.dat';
foreach my $files (@file){
    $found = 0;
    my $comd = "dece -s " .  $files . "> current.dat";
    system($comd);
    $files = basename($files);

    if($j==0){
         my $comd = "cp current.dat pattern/0.dat";
         system($comd);
	 $j++;
    }

   for ($i = 0; $i <= $j; $i++){
       $pattern = "pattern/" . $i . ".dat";
       if (compare($pattern,"current.dat") == 0) {
	    $found = 1;
	    print OUT "$files :  $i \n";
	    next;
    	}
    }
    if ($found == 0){
        my $comd = "cp current.dat pattern/" . $j . ".dat";
        system($comd);
	print OUT "$files :  $j\n";
	$j++;
    }
}
close(OUT);
=cut

open (OUT,"result.dat") or die "no result.dat";

while (<OUT>){
    $line = $_;
    ($file, $pattern) = split(/:/, $line);
    $file =~ s/\s+//g;
    $pattern =~ s/\s+//g;
    push(@{ $hash{$pattern} }, $file);
}

foreach $string (keys %hash){ 
    print "$string: @{$hash{$string}}\n";
}
