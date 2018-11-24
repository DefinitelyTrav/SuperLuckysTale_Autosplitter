state("SLT") 
{
	int onLoadScreen : "SLT.exe", 0x0142Ed58, 0x460, 0x270, 0x130, 0x18, 0x78;
}

state("SuperLucky") 
{
	int onLoadScreen : "UnityPlayer.dll", 0x145B490, 0x18, 0x6D8, 0x740, 0x7F8, 0x1B0;
}

state("SuperLucky", "1.5.2019.2") 
{
	int onLoadScreen : "UnityPlayer.dll", 0x014F8B08, 0x8, 0x70, 0x40, 0xD0, 0x6CC;
}

init 
{
	vars.isLoading = false;
	
	switch(modules.First().ModuleMemorySize)
	{
		case 53248:
			version = "1.5.2019.2";
			break;
	}
	
	print("MODULE MEMORY SIZE IS " + modules.First().ModuleMemorySize);
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