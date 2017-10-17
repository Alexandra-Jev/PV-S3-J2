#!/usr/bin/ruby

require 'rubygems'
require 'nokogiri' 
require 'open-uri'
require "google_drive"
require 'bundler'
require 'gmail'

PAGE_URL = "http://annuaire-des-mairies.com/95/vaureal.html"


def get_the_email_of_a_townhal_from_its_webpage()
	page = Nokogiri::HTML(open(PAGE_URL))
	email = page.css("p.Style22")[11].text  
	puts email
end

get_the_email_of_a_townhal_from_its_webpage()


def get_all_the_urls_of_val_doise_townhalls()
	page2 = Nokogiri::HTML(open("http://annuaire-des-mairies.com/haute-vienne.html"))
	adressePage = page2.css("a.lientxt")
	adressePage.each {|links| puts links["href"]} 
end

get_all_the_urls_of_val_doise_townhalls()


def contact()
	page3 = Nokogiri::HTML(open("http://annuaire-des-mairies.com/haute-vienne.html"))
	get_all_the_urls_of_val_doise_townhalls = page3.css("a.lientxt")
	page_URLville = [] 	#Crée un array vide, l'objectif est d'y ranger les adresses mail de toutes les villes
	get_all_the_urls_of_val_doise_townhalls.each {|links| page_URLville.push "http://annuaire-des-mairies.com/"+links["href"]} #comment retirer le ./ pour que la bonne adresse apparaissent?
	page_URLville.each {|page| 
						page = Nokogiri::HTML(open(page))
						#emailformat = /[@]/
						get_the_email_of_a_townhal_from_its_webpage = page.css("p.Style22")[11].text
						#Faux: get_the_email_of_a_townhal_from_its_webpage = page.css("p.Style22")[11].text #.select{|i| i.text =~ emailformat}   
						puts get_the_email_of_a_townhal_from_its_webpage
						} 
						
end			

contact()	

setup_spreadsheet = contact()


session = GoogleDrive::Session.from_config("config.json")
ws = session.spreadsheet_by_key("1JrnhaZmQ1NFoFMOXLvxgDUwjiZG_dsyTJZRse8Xl20U").worksheets[0]


puts ws [1,1]


gmail = Gmail.connect('Jevremovicalexandra@gmail.com', '55Jane55') do |gmail|
	# play with your gmail.. 
end

Gmail.connect('Jevremovicalexandra@gmail.com', '55Jane55') do |gmail|
	gmail.logged_in?
end

def send_email_to_line 
do emailmairie87.each

end

def go_through_all_the_lines
end

def get_the_email_html
end 

def emailSender
end

gmail.deliver do
to "emailmairie87"
subject "The Hacking Project"
text_part do 
	body "Bonjour,
	Je m'appelle Alexandra, je suis élève à une formation de code gratuite, ouverte à tous, sans restriction géographique, ni restriction de niveau. La formation s'appelle The Hacking Project (http://thehackingproject.org/). Nous apprenons l'informatique via la méthode du peer-learning : nous faisons des projets concrets qui nous sont assignés tous les jours, sur lesquel nous planchons en petites équipes autonomes. Le projet du jour est d'envoyer des emails à nos élus locaux pour qu'ils nous aident à faire de The Hacking Project un nouveau format d'éducation gratuite.

	Nous vous contactons pour vous parler du projet, et vous dire que vous pouvez ouvrir une cellule à {townhall_name}, où vous pouvez former gratuitement 6 personnes (ou plus), qu'elles soient débutantes, ou confirmées. Le modèle d'éducation de The Hacking Project n'a pas de limite en terme de nombre de moussaillons (c'est comme cela que l'on appelle les élèves), donc nous serions ravis de travailler avec {townhall_name} !

	Charles, co-fondateur de The Hacking Project pourra répondre à toutes vos questions : 06.95.46.60.80"
end
end

