# Deis phpMyAdmin

A MySQL dashboard (phpMyAdmin) for use in the [Deis@HeheCloud](http://hehecloud.com/) open source PaaS.

This Docker image is based on the official
[alpine:3.2](https://registry.hub.docker.com/_/alpine/) image.

Please add any [issues](https://github.com/HeheCloud/deis-phpmyadmin/issues) you find with this software to the Project.

## Usage

Install & Run

1. set environment `export DEISCTL_UNITS=/var/lib/deis/units`
2. copy the `deis-phpmyadmin.service` file to path: `/var/lib/deis/units/deis-phpmyadmin.service`
3. run `deisctl install phpmyadmin` to install
4. run `deisctl start phpmyadmin` to start
5. open url: `http://<your ip>:10802/` or `http://phpmyadmin.<your deis endpoint>/`

Stop & Uninstall

1. set environment `export DEISCTL_UNITS=/var/lib/deis/units`
2. run `deisctl stop phpmyadmin` to stop
3. run `deisctl uninstall phpmyadmin` to uninstall


## Environment Variables

* **DEBUG** enables verbose output if set
* **ETCD_PORT** sets the TCP port on which to connect to the local etcd
  daemon (default: *4001*)
* **ETCD_PATH** sets the etcd directory where the database announces
  its configuration (default: */hehe/services/mysql*)
* **ETCD_PATH** sets the etcd directory where the phppgadmin announces
  its configuration (default: */deis/phpmyadmin*)
* **ETCD_TTL** sets the time-to-live before etcd purges a configuration
  value, in seconds (default: *10*)
* **HOST** Host's IP address
* **EXTERNAL_PORT** sets the TCP port on which the web server listens (default: *10802*)


## Additional Resources

* [HeheCloud](http://hehecloud.com/)
* [Deis中文指南](http://deis.heheapp.com/)
