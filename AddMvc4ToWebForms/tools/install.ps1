param($installPath, $toolsPath, $package, $project)

if ($host.Version.Major -eq 1 -and $host.Version.Minor -lt 1) 
{ 
    "NOTICE: This package only works with NuGet 1.1 or above. Please update your NuGet install at http://nuget.codeplex.com. Sorry, but you're now in a weird state. Please 'uninstall-package AddMvc3ToWebForms' now."
}
else
{
    $project.Object.References.Add("Microsoft.CSharp"); 
    $project.Object.References.Add("System.Web.Mvc"); 
    $project.Object.References.Add("Microsoft.Web.Infrastructure"); 
    $project.Object.References.Add("System.Web.WebPages"); 
    $project.Object.References.Add("System.Web.Razor"); 
    $project.Object.References.Add("System.ComponentModel.DataAnnotations");
    $project.Object.References.Add("System.Web.Optimization ");
    $project.Object.References.Add("System.Web.Providers");
    $project.Object.References.Add("Newtonsoft.Json");
    $project.Object.References.Add("WebGrease");
    $project.Object.References.Add("Antlr3.Runtime");
}