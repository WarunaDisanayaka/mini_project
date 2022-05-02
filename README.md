# Mini Project

Car rental management system

## Description

This is a online car rental management system for LEVEL 2 IAD module mini_project

## Getting Started

### Dependencies

* You need XAMMP or WAMP server

### Installing

* Clone your project to XAMMP/htdocs folder or WAMMP/www floder
* Create a database in phpmyadmin name ```rentcar``` and import ```rentcar.sql``` file to it
* If your phpmysql has a unique USERNAME and PASSWORD please change this code ```$con=mysqli_connect("localhost","YOUR USERNAME","YOUR PASSWORD","rentcar");``` in below files
   * ```inc/connection.inc.php```
   * ```admin/includes/connection.inc.php```

### Executing program

* In any browser type ```localhost/YOUR ROOT FOLDER NAME```
* Make sure your computer connected to the internet
