#	  ___  _  __           
#	 / _ \| |/ _|          
#	/ /_\ \ | |_ ___  ___  
#	|  _  | |  _/ _ \/ _ \ 
#	| | | | | ||  __/ (_) |
#	\_| |_/_|_| \___|\___/
#

# ---------------------------------------------------------------------- DISPLAY HEADER

system("clear");
print("\t Welcome to TablO ! | By Alfeo\n");
print("-" x 51 . "\n\n");

# ---------------------------------------------------------------------- END DISPLAY HEADER

my @hub = 	

(

"|||","|||","|||","|||","|||","|||","|||","|||","|||","|||","|||","|||","|||","|||","|||","|||","|||\n",
"|||","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","|||\n",
"|||","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","|||\n",
"|||","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","|||\n",
"|||","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","|||\n",
"|||","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","|||\n",
"|||","|||","|||","|||","|||","|||","|||","|||","|||","|||","|||","|||","|||","|||","|||","|||","|||\n",

"\n","end"

);

# <<<<<>>>>> AREA SIZE 17 / 17

my @tab = 	

(

"[ ]","[ ]","[ ]","[ ]","[ ]","[ ]","[ ]","[ ]","[ ]","[ ]","[ ]","[ ]","[ ]","[ ]","[ ]","[ ]","[ ]\n",
"[ ]","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","[ ]\n",
"[ ]","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","[ ]\n",
"[ ]","   ","   ","   ","   ","   "," F ","   ","   ","   ","   ","   ","   ","   ","   ","   ","[ ]\n",
"[ ]","   ","   ","   ","   ","   "," F ","   ","   ","   ","   ","   "," B ","   ","   ","   ","[ ]\n",
"[ ]","   ","   ","   ","   "," F "," F "," F ","   ","   ","   "," B "," B "," B ","   ","   ","[ ]\n",
"[ ]","   "," F ","   ","   "," F "," F "," F ","   ","   "," B "," B ","   "," B "," B ","   ","[ ]\n",
"[ ]"," F "," F "," F ","   "," F "," F "," F ","   ","   "," B ","   ","   ","   "," B ","   ","[ ]\n",
"[ ]"," F "," F "," F ","   ","   "," B ","   ","   ","   "," B ","   ","   ","   "," B ","   ","[ ]\n",
"[ ]","   "," B ","   ","   ","   "," B ","   ","   ","   "," B ","   ","   ","   "," B ","   ","[ ]\n",
"[ ]","   "," B ","   ","   ","   "," B ","   ","   ","   "," B ","   ","   ","   "," B ","   ","[ ]\n",
"[ ]"," X "," X "," X "," X "," X "," X "," X "," X "," X "," X "," X "," X "," X "," X "," X ","[ ]\n",
"[ ]"," M "," X "," X "," X "," X "," X "," X "," X "," X "," X "," X "," X "," X "," X "," X ","[ ]\n",
"[ ]"," X "," X "," M "," X "," X "," X "," X "," X "," X "," X "," X "," X "," M "," X "," X ","[ ]\n",
"[ ]"," X "," X "," X "," X "," X "," X "," X "," M "," X "," X "," X "," X "," X "," X "," X ","[ ]\n",
"[ ]"," X "," X "," X "," X "," X "," X "," X "," X "," X "," X "," X "," X "," X "," X "," M ","[ ]\n",
"[ ]","[ ]","[ ]","[ ]","[ ]","[ ]","[ ]","[ ]","[ ]","[ ]","[ ]","[ ]","[ ]","[ ]","[ ]","[ ]","[ ]\n",

"\n","end"

);

# ---------------------------------------------------------------------- DISPLAY HUB

my $hubcount = 0;
chomp($hubcount);

while ($hub[$hubcount] ne "end")
{
	system("printf \"".$hub[$hubcount]."\"");

	$hubcount++;
}

# ---------------------------------------------------------------------- END DISPLAY HUB

# ---------------------------------------------------------------------- DISPLAY TAB & SET SPAWN

my $position = 178;
chomp($position);

my $compteur = 0;
chomp($compteur);

while ($tab[$compteur] ne "end")
{
	if ($compteur == $position)
	{
		system("printf \"*8*\"");
	}

	else
	{
		system("printf \"".$tab[$compteur]."\"");
	}

	$compteur++;
}

# ---------------------------------------------------------------------- END DISPLAY TAB & SET SPAWN

while ($move ne "exit")
{

	print("Action : ");

	my $move = <>;
	chomp($move);

# ---------------------------------------------------------------------- DISPLAY HEADER

	system("clear");
	print("\t Welcome to TablO ! | By Alfeo\n");
	print("-" x 51 . "\n\n");

# ---------------------------------------------------------------------- END DISPLAY HEADER
	
	if ($move eq "z")
	{
		$position = $position - 17;
	}

	if ($move eq "q")
	{
		$position = $position - 1;
	}

	if ($move eq "s")
	{
		$position = $position + 17;
	}

	if ($move eq "d")
	{
		$position = $position + 1;
	}

# ---------------------------------------------------------------------- DISPLAY HUB

	my $hubcount = 0;
	chomp($hubcount);

	while ($hub[$hubcount] ne "end")
	{
		system("printf \"".$hub[$hubcount]."\"");

		$hubcount++;
	}

# ---------------------------------------------------------------------- END DISPLAY HUB

	if ($tab[$position] eq "[ ]")
	{
		system("echo \" Vous ne pouvez pas aller par là !\n \"");		
	}

# ---------------------------------------------------------------------- DISPLAY TAB

	my $compteur = 0;
	chomp($compteur);

	while ($tab[$compteur] ne "end")
	{
		if ($compteur == $position)
		{
			system("printf \"*8*\"");
		}

		else
		{
			system("printf \"".$tab[$compteur]."\"");
		}

		$compteur++;
	}

# ---------------------------------------------------------------------- END DISPLAY TAB

}