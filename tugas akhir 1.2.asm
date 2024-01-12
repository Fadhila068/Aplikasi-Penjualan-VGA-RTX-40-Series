.model small
.code
org 100h
start:
    jmp mulai 
     


      

daftar db 13,10,'+-----------------------------------------------------------+'
       db 13,10,'|               GEFORCE RTX 40 SERIES                       |'
       db 13,10,'+-----------------------------------------------------------+'
       db 13,10,'|NO| JENIS VGA                |FAN TYPE  |   PRICELIST      |' 
       db 13,10,'|  |                          |          |                  |'
       db 13,10,'+-----------------------------------------------------------+'
       db 13,10,'|01| RTX 4060 8GB GDDR6       |DUAL FAN  | RP.5.280.000     |'
       db 13,10,'+-----------------------------------------------------------+'
       db 13,10,'|02| RTX 4060 8GB GDDR6       |TRIPLE FAN| RP.7.685.000     |'
       db 13,10,'+-----------------------------------------------------------+'
       db 13,10,'|03| RTX 4060 TI 8GB GDDR6    |DUAL FAN  | RP.6.695.000     |'     
       db 13,10,'+-----------------------------------------------------------+'
       db 13,10,'|04| RTX 4060 TI 8GB GDDR6    |TRIPLE FAN| RP.8.675.000     |'
       db 13,10,'+-----------------------------------------------------------+'
       db 13,10,'|05| RTX 4070 12GB GDDR6X     |DUAL FAN  | RP.9.713.000     |'
       db 13,10,'+-----------------------------------------------------------+'
       db 13,10,'|06| RTX 4070 12GB GDDR6X     |TRIPLE FAN| RP.9.940.000     |'
       db 13,10,'+-----------------------------------------------------------+'
       db 13,10,'|07| RTX 4070 TI 12GB GDDR6X  |DUAL FAN  | RP.10.705.000    |'
       db 13,10,'+-----------------------------------------------------------+'     
       db 13,10,'|08| RTX 4070 TI 12GB GDDR6X  |TRIPLE FAN| RP.13.458.000    |'
       db 13,10,'+-----------------------------------------------------------+'   
       db 13,10,'|09| RTX 4090 24GB GDDR6X     |TRIPLE FAN| RP.33.984.000    |'
       db 13,10,'+-----------------------------------------------------------+''$'    
       
error     db 13,10,'KODE YANG ANDA MASUKKAN SALAH $'
pilih_mtr  db 13,10,'Silahkan Inputkan (NO) RTX Yang Anda Pilih: $'

    mulai:  
                                               
     mov ah,09h
	 mov dx,offset daftar
	 int 21h
	 mov ah,09h
	 jmp proses
	 jne error_msg



error_msg:
        mov ah,09h
        mov dx,offset error
        int 21h
        int 20h

proses:
        mov ah,09h
        mov dx,offset pilih_mtr
        int 21h

        mov ah,1
        int 21h
        mov bl,al
        cmp bh,'0'
        cmp bl,'1'
        je hasil1

        
        cmp bh,'0'
        cmp bl,'2'
        je hasil2
        
        cmp bh,'0'
        cmp bl,'3'
        je hasil3         
        
        cmp bh,'0'
        cmp bl,'4'
        je hasil4
        
        cmp bh,'0'
        cmp bl,'5'
        je hasil5
        
        cmp bh,'0'
        cmp bl,'6'  
        je hasil6
        
        cmp bh,'0'
        cmp bl,'7'
        je hasil7
        
        cmp bh,'0' 
        cmp bl,'8'
        je hasil8
        
        cmp bh,'0'
        cmp bl,'9'
        je hasil9 
        
        jne error_msg
        
        
        
  
        

        
hasil1:
	mov ah,09h
	lea dx,teks1
	int 21h
	int 20h

hasil2:
	mov ah,09h
	lea dx,teks2
	int 21h
	int 20h 

hasil3:
    mov ah,09h
    lea dx,teks3
    int 21h
    int 20h   
    
hasil4:
    mov ah,09h
    lea dx,teks4
    int 21h
    int 20h

hasil5:
    mov ah,09h
    lea dx,teks5
    int 21h
    int 20h 

hasil6:
    mov ah,09h
    lea dx,teks6
    int 21h
    int 20h
 
hasil7:
    mov ah,09h
    lea dx,teks7
    int 21h
    int 20h 
    
hasil8:
    mov ah,09h
    lea dx,teks8
    int 21h
    int 20h
    
hasil9:
    mov ah,09h
    lea dx,teks9
    int 21h
    int 20h 
     


      

teks1   db 13,10,'Pilihan Anda RTX 4060 8 GB - DUAL FAN'
    db 13,10,'Silahkan Bayar Sesuai Nominal Berikut : RP.5.280.000'
    db 13,10,'Thank You Have A Nice Day $'

teks2   db 13,10,'Pilihan Anda RTX 4060 8 GB - TRIPLE FAN '
    db 13,10,'Silahkan Bayar Sesuai Nominal Berikut :RP.7.685.000'
    db 13,10,'Thank You Have A Nice Day $'     
       
teks3    db 13,10,'Pilihan Anda RTX 4060 TI 8GB - DUAL FAN'
    db 13,10,'Silahkan Bayar Sesuai Nominal Berikut :RP.6.695.000'
    db 13,10,'Thank You Have A Nice Day $' 
    

teks4    db 13,10,'Pilihan Anda RTX 4060 TI 8GB - TRIPLE FAN'
    db 13,10,'Silahkan Bayar Sesuai Nominal Berikut :RP.8.675.000'
    db 13,10,'Thank You Have A Nice Day $'
    
       
teks5    db 13,10,'Pilihan Anda RTX 4070 8GB - DUAL FAN'
    db 13,10,'Silahkan Bayar Sesuai Nominal Berikut :RP.9.713.000'
    db 13,10,'Thank You Have A Nice Day $'
   
       
teks6    db 13,10,'Pilihan Anda RTX 4070 8GB - TRIPLE FAN'
    db 13,10,'Silahkan Bayar Sesuai Nominal Berikut :RP.9.940.000 '
    db 13,10,'Thank You Have A Nice Day $'
       
teks7     db 13,10,'Pilihan Anda RTX 4070 TI 16GB - DUAL FAN'
    db 13,10,'Silahkan Bayar Sesuai Nominal Berikut :RP.10.705.000  '
    db 13,10,'Thank You Have A Nice Day $'
   
       
teks8      db 13,10,'Pilihan Anda RTX 4070 TI 16GB - TRIPLE FAN'
    db 13,10,'Silahkan Bayar Sesuai Nominal Berikut :RP.13.458.000 '
    db 13,10,'Thank You Have A Nice Day $'
   
       
teks9      db 13,10,'Pilihan Anda RTX 4090 24GB - TRIPLE FAN'
    db 13,10,'Silahkan Bayar Sesuai Nominal Berikut :RP.33.984.000 '
    db 13,10,'Thank You Have A Nice Day $ '
    
       
end start