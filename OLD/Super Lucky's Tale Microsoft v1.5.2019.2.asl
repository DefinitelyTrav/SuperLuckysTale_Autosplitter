state("SuperLucky") 
{
	int onLoadScreen : "UnityPlayer.dll", 0x014F8B08, 0x8, 0x70, 0x40, 0xD0, 0x6CC;
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