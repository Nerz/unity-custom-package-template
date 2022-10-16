# Unity Custom Package Template

Uses minimum requirements from the official documentation https://docs.unity3d.com/Manual/CustomPackages.html 

## Instructions
1. `git clone https://github.com/NazimHAli/unity-custom-package-template.git`
2. `cd unity-custom-package-template`
2. `chmod +x update-template.sh && ./update-template.sh`

## Add to Unity project
#### If you didn't follow the instructions above, Unity will not import the package. It will reject it because files will still have the template variables syntax.

1. Open `Package Manager`
2. Click on the plus icon
3. Select `Add package from disk...`
4. Select `unity-custom-package-template/package.json`
