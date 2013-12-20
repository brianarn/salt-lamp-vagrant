include:
  - inc.ondrej_ppa

php5:
  pkg.latest:
    - refresh: True
    - require:
      - pkgrepo: ondrej_ppa

/var/www/phpinfo.php:
  file.managed:
    - name: /var/www/phpinfo.php
    - source: salt://misc/phpinfo.php
