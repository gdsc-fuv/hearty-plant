# Hearty Plant Project Web App.
## How to set up the frontend web:
1. Make sure to have the Flutter SDK set up on your machine.
2. Navigate to Frontend/v1 and run __$ flutter pub get__ to download all the dependencies.
3. Run lib/main.dart by executing __$ flutter run lib/main.dart__ to start the web app server.

## How to set up the web server backend for data accessing and manipulation:
1. Make sure to have at least Python 3.9 on your computer, and makesure to have a working Microsoft SQL Server engine running.
2. Take note of the Engine's name, navigate to _Backend_ and put it in the __Database__ variable inside __API.py__.
3. Set up a database of the name _Hearty_Plant_ following this database description https://docs.google.com/document/d/14eriFJJOPWsHy-IeUb1naxtfrPG2EIfWCHXdu3VgcY0/edit?usp=sharing
4. Once everything is set up, execute _API.py_ with __python API.py__. The backend server should be up and running now, and the web should be able to access information stored in the database.
