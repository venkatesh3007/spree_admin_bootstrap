Spree Admin Bootstrap
=====================

Spree 1-3-stable admin Bootstrap theme.

Installation
-----------
- Run:
```bash
$ bundle exec rails g spree_admin_bootstrap:install
```
- Edit the file app\assets\stylesheets\admin\all.css, it should only require the admin/spree_admin_bootstrap. It will look like
```
/*
 * This is a manifest file that'll automatically include all the stylesheets available in this directory
 * and any sub-directories. You're free to add application-wide styles to this file and they'll appear at
 * the top of the compiled file, but it's generally better to create a new file per style scope.
 *

 *= require admin/spree_admin_bootstrap
*/
```

Features
-----------
- Full rework of the Spree Admin with Twitter Bootstrap
- Added features to the admin
- Fixed/tuned some Javascript work in app\views\spree\admin\prototypes\select.js.erb (only select text types)
- Fixed bug which didn't show states on new order in app\views\spree\admin\shared\_address_form.html.erb, added Javascript for this fix (same file)

Screenshots
-----------

Progress after a lazy sunday hackfest.

### Products
![image](screens/screen1.png)

### Edit product
![image](screens/screen2.png)


### Edit product images
![image](screens/screen4.png)

### New order
![image](screens/screen3.png)


### General settings
![image](screens/screen5.png)
