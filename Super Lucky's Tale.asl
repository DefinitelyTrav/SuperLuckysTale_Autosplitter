state("SLT") 
{
	int onLoadScreen : "SLT.exe", 0x1443758, 0x8, 0x50, 0x198, 0x1D0, 0x7A4;
}

init 
{
	vars.isLoading = false;
}

update
{
	if (current.onLoadScreen != 0)
	{
		vars.isLoading = true;
	} else {
    vars.isLoading = false;
  }
}

isLoading
{
	return vars.isLoading;
}