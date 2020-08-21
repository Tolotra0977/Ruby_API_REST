require 'bundler'
Bundler.require

class Larves
  def initialize
    # Recuperation des APIs selon les types du monstre 
    
    @type = HTTParty.get('https://fr.dofus.dofapi.fr/monsters?filter[where][type]=Larves')
  end
  #Execution des fichiers Json
  def larves_json
    File.open("./db/larves.json", 'w') do |file|
      file.write(@type)
    end
    puts "Fichier larves.json récupéré!"
  end
end

class Monstres_des_cavernes
  def initialize
    @monstres_des_cavernes = HTTParty.get('https://fr.dofus.dofapi.fr/monsters?filter[where][type]=Monstres des cavernes')
  end

  def monstres_des_cavernes_json
    File.open("./db/Monstres_des_cavernes.json", 'w') do |file|
      file.write(@type)
    end
    puts "Fichier Monstres_des_cavernes.json récupéré!"
  end
end

class Monstres_des_plaines
  def initialize
    @monstres_des_plaines = HTTParty.get('https://fr.dofus.dofapi.fr/monsters?filter[where][type]=Monstres des Plaines herbeuses')
  end

  def monstres_des_plaines_json
    File.open("./db/Monstres_des_plaines_herbeuses.json", 'w') do |file|
      file.write(@type)
    end
    puts "Fichier Monstres_des_plaines_herbeuses.json récupéré!"
  end
end
