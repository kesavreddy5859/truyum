function valid()
{
	var n,p,f3=0,f1=0,f2=0,name,pric;
	var stdate = document.getElementbyId("date").value;
	name=document.getElementbyId("name").value;
	pric=document.getElementbyId("price").value;
	n=name.trim();
	p=pric.trim();
	if(n=="")
	alert("Name cannot be empty");
	else if(n.length<2 || n.length>65)
	alert("Name length should be between 2-65");
	else
	f1=1;
	if(p=="")
	alert("Price cannot be empty");
	 else if(/^[0-9 .]*$/.test(p)==false)
	alert("Price should be number");
	else
	f2=1;
	if(stdate=="")
	alert("Date of launch is required");
	else
	f3=1;
	if(f1&&f2&&f3)
	window.location.href = "/truyum/edit-menu-item-status.html";
}