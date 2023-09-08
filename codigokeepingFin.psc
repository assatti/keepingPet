Algoritmo keepingPet
	
	definir Nombres como cadena	
	
	Dimension Nombres[5];
	Dimension Medicacion[5];
	Dimension Estudios[5];
	Dimension Dias[5];
	Dimension Datos[5];
	
	Definir totalMascotas como entero
	totalMascotas=0
	
	Definir opc Como Entero // opciones del menu
	
	Repetir
		Escribir "-----> MENU DE OPCIONES-----" //menu
		Escribir " -----> En este momento hay ", totalMascotas, " internadas.<-----" 
		Escribir "1. Registrar una mascota"
		Escribir "2. Consultar datos de una mascota"
		Escribir "3. Modificar datos de una mascota"
		Escribir "4. Dar de alta una mascota"
		Escribir "0. Salir"
		Escribir "Elija una opción:"
		
		Leer opc 
		
		Segun opc Hacer
			1:
				Si  totalMascotas < 5 Entonces // registro mascotas nuevas
					
					totalMascotas=totalMascotas+1					
					
					Escribir "Ingrese el nombre de la mascota:"							
					Leer Nombres[totalMascotas];					
					Escribir "Ingrese la medicación que toma:"
					Leer Medicacion[totalMascotas]; 					
					Escribir "Especifique si se realizarán estudios complementarios:"
					Leer Estudios[totalMascotas];					
					Escribir "Ingrese la cantidad de días que estará internada:"
					Leer Dias[totalMascotas];					
					Escribir "Ingrese datos complementarios:"
					Leer Datos[totalMascotas];				
					
					
					Escribir "-----> SE REGISTRO CORRECTAMENTE A " ,Mayusculas(Nombres[totalMascotas]), " <-----" 	
					
				Sino
				 Escribir "No hay lugares disponibles para internación." // sin lugar libre
				FinSi
			 
			  
		    2:
			   Escribir "Ingrese el nombre de la mascota para consultar los datos:"              // ingresar consulta
			   Leer nombreConsulta
			 
			   Encontrado<-Falso
			   i=1		   
			    
			   mientras (i<= totalMascotas y !Encontrado)				   
				    si(nombreConsulta = Nombres[i])
					   
						Encontrado <- Verdadero 	  //escribe datos consultados					
					    
				    SiNo
						i=i+1
					FinSi					
			    Fin Mientras		
				
				si nombreConsulta = Nombres[i]
					Escribir "-----> Datos de ", Mayusculas(nombreConsulta), " <-----"
					Escribir "Nombre:", Nombres[i];
					Escribir "Medicacion: " , Medicacion[i];
					Escribir "Estudios Complementarios: " , Estudios[i];
					Escribir "Dias que estara internada: ", Dias[i];
					Escribir "Datos Complementarios: " , Datos[i];
					
				sino escribir "El nombre de la mascota no coincide con ninguna del registro" 
					
				FinSi
				
				
			3: Escribir "Ingrese el nombre de la mascota para modificar datos:"                        // ingresar modificacion de datos
			    leer nombreModificacion
			    Encontrado <- Falso
			    i=1
				
				mientras (i<= totalMascotas y !Encontrado)				 
			        si(nombreModificacion = Nombres[i])
						
						Encontrado<- Verdadero 			
						
				    SiNo
						i=i+1 
						
				    FinSi
				  
				FinMientras
				
				si(nombreModificacion = Nombres[i])
				  Escribir "-----> Modificación de datos de ", nombreModificacion, " <-----"   //menu modificacion
				  Escribir "1. Modificar medicación"
				  Escribir "2. Modificar estudios complementarios"
				  Escribir "3. Modificar días internacion"
				  Escribir "4. Modificar datos complementarios"
				  Escribir "5. Salir del menu"
				  Escribir "Elija una opción:"
				  Leer opcionModificacion		
				  
					segun opcionModificacion hacer                                                       // espacio de modificaciones
					1:Escribir "Ingrese la nueva medicación:"
						leer Medicacion[i]
						
					2: Escribir "Ingrese la modificacion de los estudios complementarios"							
						leer Estudios[i];							
						
					3: Escribir "Ingrese las modificaciones sobre los dias de internacion"
						leer Dias[i];						
						
					4: Escribir "Ingrese las modificaciones de los datos complementarios"
						leer Datos[i];	
						
					5: Escribir "Salio del menu de modificaciones"	
						
						
				    FinSegun
				sino Escribir "El nombre de la mascota no coincide con ninguna del registro" 
					
			    FinSi
			  
			4:	
				Escribir "Ingrese el nombre de la mascota que se esta dando de alta"  // dar alta (disminuir el total de mascotas para permitir seguir registrando)
			    leer mascotaAlta
				Encontrado<- Falso				 
				i=1			
				
				Mientras (i<= totalMascotas y !Encontrado) Hacer
					
					si  mascotaAlta = Nombres[i] Entonces						
						
						Encontrado<- Verdadero 
						
						Escribir " Se dio de alta a :" , Mayusculas(Nombres[i]	)
						
						Datos[i]<- " -----> LA MASCOTA YA FUE DADA DE ALTA <-----"
						
						totalMascotas = totalMascotas-1				
						
						
					SiNo
						i=i+1
					FinSi
					
					
				Fin Mientras
				
			   
		    De Otro Modo: Escribir "No eligio ninguna de las opciones validas"    
		   
	   Fin Segun
	 
	 
    hasta Que opc=0                                                                                    //salidas de menu
	
	
FinAlgoritmo
