#!/usr/bin/perl

###########################################################################
#
#      Make PENDF files using DeCE for all IAEA Photonuclear data 2019
#             plot them with Gnuplot and compile them in tex
#                                                 Feb. 2020 S.Okumura
#
###########################################################################

use warnings;
use strict;
use Sort::Key::Natural qw(natsort);
use File::Basename;

# Run DeCE command to extract cross section data from ENDF format file
# Only for the cases that contains MF3-MT5 and MF6-MT5

my $mode = 1  ;# mode: 0 All, mode: 1 plot only, mode: -1 debug

if ($mode == -1){
open (TEST, "zap");
    while(<TEST>){
	my $line           = $_;
	my ($s, $p, $zap)  = split(/\s+/,$line);
	my $elem_name  = zaptoelem($zap);
	print "$zap, $elem_name\n";
    }
}

# Run DeCE code
if ($mode == 0){
    unlink glob('mf3mt3/*');
    unlink glob('mf3mt5/*');
    unlink glob('mf6mt5/*');
    my @file         =  glob '../data/g-iaea-pd-2019/*.dat';
    foreach my $files (@file){
	$files =~ /([g][_].*?[t]$)/;
	my $filename = $&;
	if ($filename =~ /0128|0425|0625|0725|0825/){
	    my $comd = "dece -f3 -t3 " . $files . "> mf3mt3/" . $filename;
	    system($comd);
	}
	else{
	my $comd = "dece -f3 -t5 " . $files . "> mf3mt5/" . $filename;
	system($comd);
	my $comd = "dece -f6 -t5 " . $files . "> mf6mt5/" . $filename;
	system($comd);
	}
    }
}

#my $files = "mf6mt5/g_65-Tb-159_6525.dat";
if ($mode >= 0){
    unlink glob('eps/*');
    unlink glob('eps-law0/*');
    unlink glob('eps-log/*');
    my $tex    = "alleps.tex";
    open (TEX, ">$tex");

# Extract non LAW=0 data from MF6-MT5 and create gnuplot input file and compile it
# Iterate for all data in mf6mt5 folder
#my @file         =  glob 'mf6mt5/*.dat';
my @file = map basename($_), <mf6mt5/*.dat>;
my @sorted = natsort @file;
my $mf3;
foreach my $files (@sorted){
    $files = "mf6mt5/" . $files;
    #if($files =~ /1325/){
    my $nucl   =substr($files,7,-3); $nucl =~ s/_/-/g;
    my ($zap, $law, $np, $npl, $nk, $residual);
    my $index1   = -1.0;
    my $index0   = -1.0;
    my $law1    = substr($files,0,-3) . "law1";
    my $law0    = substr($files,0,-3) . "law0";
    #my $plot   = substr($files,7,-3) . "plt";
    if ($nucl =~ /0128|0425|0625|0725|0825/){
	$mf3    = "mf3mt3/" . substr($files,7,);
    }
    else{
	$mf3    = "mf3mt5/" . substr($files,7,);
    }
    my $eps    = "eps/"         . substr($files,7,-3) . "eps";
    my $epslaw0= "eps-law0/"    . substr($files,7,-3) . "eps";
    my $epsl   = "eps-log/"     . substr($files,7,-3) . "eps";
    my $plot   = "plot.plt";
    my @dataset1 = ();
    my @dataset0 = ();

    open (MF6,  "$files") or die "No MF6 file";
    open (LAW1,  ">$law1");
    open (LAW0,  ">$law0");
    open (PLT,  ">$plot");
    print "$files\n";
    
    # Write gnuplot input, command and MF3 part
    print PLT "set term postsc enhanced eps color solid font 'Helvetica,16'\n";
    print PLT "set output '$eps'\n";
    print PLT "set xrange [9E-1:]\nset format x '10^{%L}'\nset xtics 10\nset log x\n";
#    print PLT "set key top left reverse spacing 0.8\n";
    print PLT "set xlabel 'Incident photon energy [MeV]'\nset ylabel 'Cross section [b]'\n";
    print PLT "set y2label 'Residual multiplicity'\nset ytics nomirror\nset y2tics 1\n";
    if ($nucl =~ /0128|0425|0625|0725|0825/){
         print PLT "plot '$mf3' u (\$1\/1E+6):2 ti 'MF3 MT3' w l lw 2 lc rgb 'red',";
    }
    else{
         print PLT "plot '$mf3' u (\$1\/1E+6):2 ti 'MF3 MT5 (Photo-absorption)' w l lw 2 lc rgb 'red',\\\n";
    }

    # Find non LAW=0 data from MF6 file and write them to another file with an extention .resid
    while(<MF6>){
	my $line           = $_;
	if(/ZAP/){ $zap         = substr($line,15,13);
		   $zap         = trim($zap);
		   my $elem     = zaptoelem($zap);
		   my $resi_z   = int($zap/1000);
		   my $resi_a   = $zap-(1000*$resi_z);
		   if($elem =~ /^[a-p]{1}/ ){$residual = $elem;}
		   else{$residual    = $elem ."-". $resi_a};
		   #print "$zap, $elem,$resi_z,$resi_a,$residual\n";
	}
	if(/LAW/){ $law = substr($line,15,13); $law = trim($law);}
	if(/NP/) { $np  = substr($line,15,13); $np  = trim($np) ; $npl = $. ;
		if($law == 1){
		    $index1 ++;
		    print LAW1 "\n\n\n#     $index1\n#     ZAP    $zap\n#     LAW    $law\n#     NP    $np\n";
		    # Write gnuplot input for MF6 part
		    #print PLT "'$out' i $index u 1:4 ti '$residual' w l,";
		    #print PLT1 "'$law1' i $index1 u (\$1\/1E+6):3 ti '$residual' w l dt (10,5) axes x1y2,\\\n";
		    $dataset1[$index1]   =  $residual;
		}
		if($law == 0){
		    $index0 ++;
		    print LAW0 "\n\n\n#     $index0\n#     ZAP    $zap\n#     LAW    $law\n#     NP    $np\n";
		    # Write gnuplot input for MF6 part
		    #print PLT "'$out' i $index u 1:4 ti '$residual' w l,";
		    #print PLT0 "'$law0' i $index0 u (\$1\/1E+6):3 ti '$residual' w l dt (10,5) axes x1y2,\\\n";
		    $dataset0[$index0]   =  $residual;
		}
	}
	if($line =~ /^\s[0-9]/ && $law == 1 && $. > $npl+1 && $. < $npl+1+$np ) {print LAW1 "$line";}
	if($line =~ /^\s[0-9]/ && $law == 0 && $. > $npl+1 && $. < $npl+1+$np ) {print LAW0 "$line";}
    }
    close(MF6);
    
    my $i;
    if ($index1 >= 0){
       for ($i = 0; $i <= $index1; $i++){
	   print PLT "'$law1' i $i u (\$1\/1E+6):3 ti '$dataset1[$i]' w l dt (10,5) axes x1y2,\\\n";
       }
    }

    print PLT "\n\nset output '$epslaw0'\n";
    print PLT "plot '$mf3' u (\$1\/1E+6):2 ti 'MF3 MT5 (Photo-absorption)' w l lw 2 lc rgb 'red',\\\n";
    
    my $j;
    if ($index0 >= 0){
	for ($j = 0; $j <= $index0; $j++){
	    print PLT "'$law0' i $j u (\$1\/1E+6):3 ti '$dataset0[$j]' w l dt (10,5) axes x1y2,\\\n";
	}
    }
   
    # Write gnuplot input with y axis in log scale
#    print PLT "\n\nset output '$epsl'\n";
#    print PLT "set yrange [1E-10:]\nset format y '10^{%L}'\nset ytics 10\nset log y\n replot\n";
    
    # Run gnuplot
    my $return_value = `gnuplot "$plot"`;
    
    # Write tex file
    print TEX "\\begin{figure}\n \\includegraphics[width=\\linewidth]{$eps}\n  \\caption{$nucl}\n\\end{figure}\n";
    print TEX "\\begin{figure}\n \\includegraphics[width=\\linewidth]{$epslaw0}\n \\caption{$nucl}\n\\end{figure}\n\\newpage \\clearpage\n\n";
    #print TEX "\\begin{figure}\n \\includegraphics[width=\\linewidth]{$epsl}\n \\caption{$nucl}\n\\end{figure}\n\\newpage \\clearpage\n\n";
#    }
}
# Run tex compile
my $return_value = `pdflatex main.tex`;
# my $return_value = `open main.pdf`;
    close(LAW1);
    close(LAW0);
    close(PLT);
    close(TEX);
}

sub trim {
	my $val = shift;
	$val =~ s/^ *(.*?) *$/$1/;
	return $val;
}

sub zaptoelem {
    my $zap = shift;
    my $elem_name = "";
    if    ($zap == "0")   {$elem_name = "g";}
    elsif ($zap == "1")   {$elem_name = "n";}
    elsif ($zap == "1001"){$elem_name = "p";}
    elsif ($zap == "1002"){$elem_name = "d";}
    elsif ($zap == "2004"){$elem_name = "alpha";}
    else{
	my $resi_z = int($zap/1000);
	my @elem_list=("", 
		       "H" , "He", "Li", "Be", "B" , "C" , "N" , "O" , "F" , "Ne",
		       "Na", "Mg", "Al", "Si", "P" , "S" , "Cl", "Ar", "K" , "Ca",
		       "Sc", "Ti", "V" , "Cr", "Mn", "Fe", "Co", "Ni", "Cu", "Zn",
		       "Ga", "Ge", "As", "Se", "Br", "Kr", "Rb", "Sr", "Y" , "Zr",
		       "Nb", "Mo", "Tc", "Ru", "Rh", "Pd", "Ag", "Cd", "In", "Sn",
		       "Sb", "Te", "I" , "Xe", "Cs", "Ba", "La", "Ce", "Pr", "Nd",
		       "Pm", "Sm", "Eu", "Gd", "Tb", "Dy", "Ho", "Er", "Tm", "Yb",
		       "Lu", "Hf", "Ta", "W" , "Re", "Os", "Ir", "Pt", "Au", "Hg",
		       "Tl", "Pb", "Bi", "Po", "At", "Rn", "Fr", "Ra", "Ac", "Th",
		       "Pa", "U" , "Np", "Pu", "Am", "Cm", "Bk", "Cf", "Es", "Fm",
		       "Md", "No", "Lr", "Rf", "Db", "Sg", "Bh", "Hs", "Mt", "Ds",
		       "Rg", "Cn", "Nh", "Fl", "Mc", "Lv", "Ts", "Og", "Uue","Ubn",
		       "Ubu","Ubb","Ubt","Ubq","Ubp","Ubh","Ubs","Ubo","Ube","Utn",
		       "Utu","Utb","Utt","Utq","Utp","Uth","Uts","Uto","Ute","Uqn",);
	 $elem_name = $elem_list[$resi_z];
    }
  return $elem_name;
}

