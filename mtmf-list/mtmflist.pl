#!/usr/bin/perl

use File::Compare;
use File::Basename;

$j=0;

#=pod
open(OUT, ">result.dat");
my @files         =  glob '../data/g-iaea-pd-2019/*.dat';
foreach my $file (@files){
    $found = 0;
    my $comd = "dece -s " .  $file . "> current.dat";
    system($comd);
    $file     = basename($file);
    $file     =~ /(_)(\S+)(_)/;
    $elemmass  = $2;
    
    if($j==0){
         my $comd = "cp current.dat pattern/0.dat";
         system($comd);
	 $j++;
    }

   for ($i = 0; $i <= $j; $i++){
       $pattern = "pattern/" . $i . ".dat";
       if (compare($pattern,"current.dat") == 0) {
	    $found = 1;
	    print OUT "$elemmass   $i \n";
	    next;
    	}
    }
    if ($found == 0){
        my $comd = "cp current.dat pattern/" . $j . ".dat";
        system($comd);
	print OUT "$elemmass   $j\n";
	$j++;
    }
}
close(OUT);
#=cut

open (OUT,"result.dat") or die "no result.dat";
while (<OUT>){
    $line     = $_;
    ($elemmass, $pattern) = split(/\s+/, $line);
#    $file     =~ s/\s+//g;
#    $file     =~ /(_)(\S+)(_)/;
#    $elemmass = $2;
#    $pattern  =~ s/\s+//g;
    push(@{ $hash{$pattern} }, $elemmass);
}
close(OUT);

foreach $string (keys %hash){
    print "$string:\n";
    print "@{$hash{$string}}\n";
    # print join ("\n", @{$hash{$string}}, "\n");
}
#=cut

=pod
my @pfiles         =  glob 'pattern/*.dat';
foreach my $pfile (@pfiles){
    print "\n\n$pfile \n";
    $command   = "cat " . $pfile;
    system($command);
}
=cut
