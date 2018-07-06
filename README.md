<h1>HumanPhysioSpace</h1>
HumanPhysioSpace is a R data package which provides physiological spaces to be used with the package <a href="https://github.com/JRC-COMBINE/PhysioSpaceMethods">PhysioSpaceMethods</a> for in depth analysis of human gene expression data.

#### Table of Contents
**[Installation Instructions](#installation-instructions)**<br>
**[License](#license)**<br>
**[Usage Instructions](#usage-instructions)**<br>
**[Test Environments](#test-environments)**<br>

### Installation Instructions
It is recommended to install [PhysioSpaceMethods](https://github.com/JRC-COMBINE/PhysioSpaceMethods) before HumanPhysioSpace. More information about how to install PhysioSpaceMethods is provided in https://github.com/JRC-COMBINE/PhysioSpaceMethods.

#### Installing via Devtools (Recommended method):
Easiest way to install HumanPhysioSpace is via <a href="https://cran.r-project.org/web/packages/devtools/">Devtools</a>.
After installing Devtools from cran, you can install HumanPhysioSpace by:
```r
devtools::install_github(repo = "JRC-COMBINE/HumanPhysioSpace", build_vignettes = TRUE)
```

#### Alternative installation methods (Manual download):
In case you encountered any problem while installing HumanPhysioSpace, you can download the repository first and 
install the package from downloaded local files.
In your terminal, first clone the repository in your desired repository:
```Shell
cd [Your desired directory]
git clone https://github.com/JRC-COMBINE/HumanPhysioSpace.git
```
Then install the downloaded package using <a href="https://cran.r-project.org/web/packages/devtools/">Devtools</a>:
```Shell
R -e "devtools::install_local('./HumanPhysioSpace/', build_vignettes = TRUE)"
```


### License
Distributed under GNU General Public License v3.0. See the accompanying [license](https://github.com/JRC-COMBINE/PlantPhysioSpace/blob/master/LICENSE) file or the copy at https://www.gnu.org/licenses/gpl-3.0.html.

### Usage Instructions
HumanPhysioSpace can map user samples inside a physiological space, calculated prior from a compendium 
of known samples. We demonstrated how to use this package in a vignette which you can access via:
```r
browseVignettes(package = "HumanPhysioSpace")
```

### Test Environments
The package was tested with R 3.4 on ~~Windows 10~~, Mac OS X and ~~Linux (CentOS 7.4)~~.
