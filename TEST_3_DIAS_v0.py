# -*- coding: utf-8 -*-
"""
Created on Mon Feb 19 17:34:57 2018

@author: eduardo sebastián (INNOVART)

Archivo que captura los últimos 100 tweets de los aragoneses
y los procesa, obteniendo la polaridad de sentimientos que 
expresan y calcula el porcentaje de felicidad de la población:

  - 0% es máxima tristeza
  
  - 100% es máxima alegria
  
TEST MADRID:

    - Comienzo: 2018-02-26 a las 16:30
    - Fin:      
  
"""

import tweepy as tw
import csv
import textblob
import codecs

"""
leemos los tokens 
"""
consumer_token='vfuPk4aqwYoTi2SLZFlhLnICH'
consumer_secret='5senhOY5qvRWjaDYfITwsaYqNwqerkSMwEaRHlQUVlheV6v5Ow'
access_token='960495556165586944-1e83g5ytKxnUmQ9l350DnsdU0Y3e2yn'
access_secret='mnpPNnP9lAnewSiEfLZM71q8DumDucPuILUgwwPCVQFM7'


"""
file=open('consumer_token.txt','r')
consumer_token=file.readline()
file.close()
print consumer_token

file=open('consumer_secret.txt','r')
consumer_secret=file.readline()
file.close()
print consumer_secret

file=open('access_token.txt','r')
access_token=file.readline()
file.close()
print access_token

file=open('access_secret.txt','r')
access_secret=file.readline()
file.close()
print access_secret
"""

"""
creamos un objeto de clase OAuth
"""
aut=tw.OAuthHandler(consumer_token, consumer_secret)
aut.set_access_token(access_token, access_secret)

"""
creamos un objeto API, al que le pasamos como parámetro el objeto aut
"""
API = tw.API(aut)

"""
Vamos a buscar por la red todos os tweets en la región de Aragón emitidos recientemente.
Para ello, creamos tres áreas circulares con centros en Zaragoza, Huesca y Teruel, con 
la intención de abarcar todo Aragón

DESDE TERUEL: RADIO DE 70 KM
DESDE ZARAGOZA: RADIO DE 135 KM 
DESDE HUESCA: RADIO DE 90 KM
"""
while(0==0):
    try:
        csvFile = open('tweets.csv', 'w')
        csvWriter = csv.writer(csvFile)
        
        for tweet in tw.Cursor(API.search,q="*",count=1500, geocode="40.409642,-3.697397,30km").items(1500):
            try:
                print [tweet.created_at, tweet.text.encode('utf-8')]
                csvWriter.writerow([tweet.created_at, tweet.text.encode('utf-8')])
            except Exception as e:
                pass
                     
               
            
        """
        iniciamos las variables que nos sacan el porcentaje de felicidad:
        
            * contador_interaccion proporciona el número de tweets analizados
            * contador_polaridad obtiene el valor total de sumar las polaridades de los tweets
            
        """
        contador_interaccion=0
        contador_polaridad=0
        
        """
        Inspeccionamos el archivo csv que guarda los tweets, quedándonos sólo con
        el tweet en sí. El script acude a la API de Google para traducir los tweets al
        inglés, estén en el idioma que sea (a veces da problemas de detección de lenguaje,
        así que ponemos un try-catch). Una vez listos los tweets, analizamos su polaridad con
        twextBlob.
        """
        try:
            with open('tweets.csv', 'rb') as csvfile2:
                reader = csv.reader(csvfile2)
                for row in reader:
                    try:
                        cadena=row[1]
                        cadena=codecs.decode(cadena, 'utf8')
                        print cadena
                        pre_traduccion=textblob.TextBlob(cadena)
                        if(pre_traduccion.detect_language()!='en'):
                            try:
                                 post_traduccion=pre_traduccion.translate(to='en')
                            except Exception as e:
                                pass
                        polaridad=post_traduccion.sentiment.polarity   
                        contador_interaccion+=1
                        contador_polaridad+=polaridad
                        print polaridad 
                    except Exception as e:
                        pass
        except Exception as e:
            pass
        
        
        if(contador_interaccion!=0): 
            felicidad=contador_polaridad/contador_interaccion*100
        else:
            felicidad=0
        
        
        felicidad=(felicidad+100)/2
        print felicidad 
        
        """
        Teniendo ya el porcentaje de felicidad, obtenemos un número (string) que escribimos en un
        fichero txt para su posterior lectura con processing. Por la razón que sea, la primera vez
        que escribimos no aparece ningún carácter, así que abrimos, escribimos y cerramos dos veces
        """
        selector_imagen="666" 
        
        if(felicidad<=100 and felicidad> 60):  selector_imagen="9"
        elif(felicidad<=60 and felicidad>57):  selector_imagen="8"
        elif(felicidad<=57 and felicidad>55):  selector_imagen="7"
        elif(felicidad<=55 and felicidad>53):  selector_imagen="6"       
        elif(felicidad<=53 and felicidad>52):  selector_imagen="5"
        elif(felicidad<=52 and felicidad>51):  selector_imagen="4"
        elif(felicidad<=51 and felicidad>50):  selector_imagen="3"
        elif(felicidad<=50 and felicidad>49):  selector_imagen="2"
        elif(felicidad<=49 and felicidad>48):  selector_imagen="1"
        elif(felicidad<=48 and felicidad>0):   selector_imagen="0"
        else:                                  selector_imagen="66"
        
        
        salida = open('felicidad.txt','w')
        salida.write(selector_imagen)
        salida.close()
        
        salida = open('felicidad.txt','w')
        salida.write(selector_imagen)
        salida.close()
        
        
        indice = open('indice.csv','a')
        csvIndice = csv.writer(indice)
        csvIndice.writerow([felicidad])
    
        indice = open('indice.csv','a')
        csvIndice = csv.writer(indice)
        csvIndice.writerow([felicidad])
        
        selector = open ('selector.csv','a')
        csvSelector = csv.writer(selector)
        csvSelector.writerow([selector_imagen])
     
        selector = open ('selector.csv','a')
        csvSelector = csv.writer(selector)
        csvSelector.writerow([selector_imagen])
        
        analizados = open ('analizados.csv','a')
        csvAnalizados = csv.writer(analizados)
        csvAnalizados.writerow([contador_interaccion])
    
        analizados = open ('analizados.csv','a')
        csvAnalizados = csv.writer(analizados)
        csvAnalizados.writerow([contador_interaccion])
    
    except Exception as e:
        pass