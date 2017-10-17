#!/usr/bin/ruby

require 'gmail'


gmail = Gmail.connect('Jevremovicalexandra@gmail.com', '55Jane55') do |gmail|
	# play with your gmail.. 
end

Gmail.connect('Jevremovicalexandra@gmail.com', '55Jane55') do |gmail|
	gmail.logged_in?
end

def send_email_to_line 
	each
do emailmairie87

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

