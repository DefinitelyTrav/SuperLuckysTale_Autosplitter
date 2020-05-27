state("SLT") 
{
	int onLoadScreen : "SLT.exe", 0x0142Ed58, 0x460, 0x270, 0x130, 0x18, 0x78;
}

state("SuperLucky") 
{
	int onLoadScreen : "GameAssembly.dll", 0x0252AF70, 0x30, 0xB8, 0x70, 0x0, 0x38, 0x70, 0x0;
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