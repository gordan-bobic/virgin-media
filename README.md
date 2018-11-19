# virgin-media

Scripts for monitoring Virgin Media SuperHub 2ac, This will probably work on 
SH2 (without the ac) as well, if you have one please test and let me know.

The scripts are designed to put the data directly into a MySQL database so 
that you can use the data in Grafana and other monitoring and visualisation 
tools.

sh2ac2mysql / h32mysql:
	Extracts downstream and upstream power levels and RxMER (SNR), and 
	logs them to a MySQL database.

	Parameters:
		--debug
			Causes the script to print debug information to 
			standard output in addition to putting it into 
			the database.

		--target
			Name or IP address of your SH2ac

		--host
			Name or IP address of your MySQL server

		--user
			Username for your MySQL server

		--password
			Password for your MySQL server

		--database
			Name of the database you want to log to

		--rpass
			Password to get into your SH2ac. This is needed to 
			extract the bandwidth usage information.

ping2mysql:
	Gathers ICMP and TCP latencies to arbitrary destinations and logs them 
	to a MySQL database. It takes 1 minute to run, and sends 60 probes, 1 
	second apart. It logs minimum, average and maximum response times and 
	packet loss.

	Parameters:
		--debug
			Causes the script to print debug information to 
			standard output in addition to putting it into 
			the database.

		--target
			Name or IP address of the destination you want to 
			measure the latency to.

		--ttl
			This is passed directly into the logged information. 
			You can set this to the number of hops to the target 
			and use it in your visualisation tools.

		--host
			Name or IP address of your MySQL server

		--user
			Username for your MySQL server

		--password
			Password for your MySQL server

		--database
			Name of the database you want to log to


The scripts are intended to be run every minute from cron.

You will need to create the following tables for the scripts to log to. You 
will find the definition of those in the sh2ac.sql file.

Grafana dashboard templates are in the grafana/ folder.
