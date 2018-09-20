state("SLT") 
{
	int onLoadScreen : "SLT.exe", 0x0142Ed58, 0x460, 0x270, 0x130, 0x18, 0x78;
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