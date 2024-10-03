Commentary live stream

Web service for live stream Ghana soccer game FA cup commentary (for two languages: English and local language Twi).

Repos:
sw-vue

Installation Instructions:

1. Front End Framework Vue:
   1. Download visual studio
   2. Install Node.js (LTS)
   3. Recomplie: npm install
   4. Run project: npm run dev
2. Back End Framework Springbok:
   1. Install JDK 17
   2. Install IDEA (for example: IntelliJ)
   3. Import project from Open or Get from VCS
   4. Run project: Click Run ‘DemoApplication’ (or go to DemoApplication file and click run project)
3. Database MySQL:
   1. Install MySQL 8.0 (or higher)
   2. Install Navicat (MySQL GUI Management tool)
   3. Create database
   4. Right click database and select ‘Execute SQL File’, then select ‘live_stream.sql’ (under backend file ), start
4. Docker manage SRS:
   1. Install Docker
   2. Install SRS through Docker and run SRS (https://ossrs.net/lts/en-us/docs/v5/doc/getting-started)
5. Nginx:
   1. Download and install Nginx
   2. cd to nginx.conf and replace with our project nginx (locate at pitchman/frontend)

Deploy Instruction:

1. Connect to instance with SSH
2. Front End: npm run build and upload the files under list to /opt
3. Back End: use maven to compile and package, and upload ‘demo-0.0.1-SNAPSHOT.jar’ to /opt (if it is the first time deploy on this instance, use ‘apt install openjdk-17-jre-headless’ to install java 17)
4. Run java: run command ‘nohup java -jar demo-0.0.1-SNAPSHOT.jar nohup.out &’
   If it is the first time deploy:
5. Docker: install docker ‘apt install docker.io’
6. Connect Database: install MySQL on Docker, use Navicat connect to the server’s IP address, create new database: (Database Name: live_stream; Character set： utf8mb4; Collation： utf8mb4_bin)
7. Install SRS on Docker: ‘docker pull ossrs/srs:4’, ‘export CANDIDATE="173.255.235.70”’, ‘docker run --env CANDIDATE=$CANDIDATE -p 1935:1935 -p 8080:8080 -p 1985:1985 -p 8000:8000/udp -d ossrs/srs:4’

Currently hosted at: https://facuplive.com/login
