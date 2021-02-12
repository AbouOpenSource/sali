#Creation de containeur a aprtir de l'image Python. Pour voir l'image Python allez sur docker hub

FROM python:3.8
#Ajout du code au niveau du containeur
ADD main.py .
#Copy du fichier des dependance au niveau du containeur
COPY ./requirements.txt /app/requirements.txt
#Installation de tous les packets de notre environement
RUN pip install -r /app/requirements.txt
#Lancement automatique de notre applicatio lors du demerrage du containeur.
ENTRYPOINT [ "python3", "./main.py"]


