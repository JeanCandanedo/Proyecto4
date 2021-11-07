clc
u=1;
while(u==1)
  printf('Ingrese el numero de la operacion que desea realizar:\n');
  printf('1.Regla del Trapecio \n');
  printf('2.Regla de Simpson \n');
  printf('\n');
  sel=input("Seleccion: ");
  printf('\n');
  
  
  if(sel=2)
    funcion = input("ingrese la funcion : ","s");
    f = inline(funcion);
    a= input("ingrese el valor de a : ");
    b= input("ingrese el valor de b : ");
    n= input("ingrese el valor de n : ");
    h=(b-a)/(n);
    k=(a:h:b)';
    v=zeros(1,n/2)';
    for i=1:2:n
      v(i)=(h/3)*(f(k(i,1))+4*f(k(i+1,1))+f(k(i+2),1));
    endfor
    s=sum(v);
    printf('El resultado usando regla de Simpson es: %f \n',s);
    printf('\n');
  else
    funcion = input("ingrese la funcion : ","s");
    f = inline(funcion);
    a= input("ingrese el valor de a : ");
    b= input("ingrese el valor de b : ");
    n= input("ingrese el valor de n : ");
    h=(b-a)/(n);
    k=(a:h:b)';
    v=zeros(1,length(k)-1)';
    for i=1:length(k)-1
      v(i)=h*(f(k(i+1,1))+f(k(i,1)))/2;
    endfor
    S=sum(v);
    printf('El resultado usando regla del Trapecio es: %f \n',s);
    printf('\n');
  endif
  u=input("Ingrese el nuemro uno si desea repetir o el numero cero para salir: ");
  clc
endwhile