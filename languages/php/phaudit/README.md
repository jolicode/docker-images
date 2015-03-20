# Phaudit 

A simple docker images to run some phpqatools on your php project

## Available tools

* [PHPLoc](http://github.com/sebastianbergmann/phploc) as `phploc`
* [PHP_Depend](http://pdepend.org/) as `pdepend`
* [PHP Mess Detector](http://phpmd.org/) as `phpmd`
* [PHP_CodeSniffer](http://pear.php.net/PHP_CodeSniffer) as `phpcs` and `phpcbf`
* [PHP Copy/Paste Detector](http://github.com/sebastianbergmann/phpcpd) as `phpcpd`
* [PHP Dead Code Detector](http://github.com/sebastianbergmann/phpdcd) as `phpdcd`
* [PhpMetrics](http://www.phpmetrics.org/) as `phpmetrics`
* [PHP Coding Standards Fixer](http://cs.sensiolabs.org/) as `php-cs-fixer`

## Usage

Grab the image, and run one of tool with your project mounted in the work directory `/project` on this image:

```
cd my_php_project
docker pull jolicode/phaudit
docker run -t -i -v `pwd`:/project jolicode/phaudit phploc src/
```
