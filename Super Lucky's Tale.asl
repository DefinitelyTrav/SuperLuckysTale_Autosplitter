state("SuperLucky") 
{
	int onLoadScreen : "UnityPlayer.dll", 0x01539A60, 0x0, 0x1C0, 0x730, 0x568, 0x164;
	int onCloverGet : "AkSoundEngine.dll", 0x00141C38, 0x18, 0x180, 0x558, 0x78, 0x640;
}

init 
{
	vars.isLoading = false;
	vars.split = false;
	vars.hasSplit = false;
}

update
{
	vars.isLoading = false;
	vars.split = false;
	if (current.onLoadScreen != 0)
	{
		vars.isLoading = true;
	}
	if (current.onCloverGet != 0 && current.onLoadScreen != 0)
	{
		if (vars.hasSplit == false) 
		{
			vars.split = true;
		}
		vars.hasSplit = true;
	}
	if (current.onCloverGet != current.onLoadScreen)
	{
		vars.hasSplit = false;
	}

}

split 
{
	return vars.split;
}

isLoading
{
	return vars.isLoading;
}