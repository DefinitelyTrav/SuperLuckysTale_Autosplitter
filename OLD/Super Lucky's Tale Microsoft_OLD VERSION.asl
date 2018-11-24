state("SuperLucky") 
{
	int onLoadScreen : "UnityPlayer.dll", 0x145B490, 0x18, 0x6D8, 0x740, 0x7F8, 0x1B0;
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