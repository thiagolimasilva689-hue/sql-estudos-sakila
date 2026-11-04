#Operador like
use sakila;
# eu quero puxar todos os atores que começar começar com
# % signficar qualquer  partir de algo 
# Lado% vai iniciar desse lado
# #  %terminal vai terminar desse lado
# not like é ao contrario do like

select * from actor where first_name  not like 'n%';

