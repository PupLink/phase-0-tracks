# house = {
# 	'living_room' => [
# 		'sofa',
# 		'chandelier'
# 	],
# 	'kitchen' => [
# 		'table'
# 		'refrigerator'
# 	],
# 	'attic': [],
# }

# house['attic'].push('ghost')

# house = ['living_room'].push ('cat')

# house = ['living_room'][2] = 'dog'

#4.4! to build a dungeon for monsters and traps!

dungeon = {
	'start' =>[
		'goblin1',
		'goblin2',
		'goblin3',
	],
	'trap1' =>[
		'fools_gold',
		'swinging_axe'
	],
	'torture_chamber' =>[
		'torture_cross',
		'spikes',
		'wall_cuffs'
	],
	'boss_room' =>[
		'fire',
		'boss_oger'
	],
	'treasure_room' => [
		'pile_o_treasure',
		'treasure_chest',
		'exit_switch'
	]
}

p dungeon


#the goblins in the starting area need to be more than target practice,
#give them daggers, not very strong but still a knife...
puts " ------------ "
dungeon['start'].each {|knife| print knife, "_w/dagger "}

#why have a pile of treasure next to a container already full of treasure? 
#lets just make the pile of treasure into a fancy crown, 
#for bragging rights of course...
puts " ------------ "
p dungeon['treasure_room'][1] = 'fancy_crown'
puts "To the victor goes the spoils!"

#the oger is taking damage from the flames in the boss room,
#replace with a monster imune to fire
puts " ------------ "
p dungeon['boss_room'][1] = 'fire_demon'
puts "HAHAHAHA! I am Fire!!!!"

#boss is now too difficult, add health potions at the end of the torture chamber, 
#just before the boss room.
puts " ------------ "
p dungeon['torture_chamber'].push ('-health_potion- ' * 5)
puts "there, you bunch of whiners."

puts " ------------ "
#why is the switch so hard for players to find?! fine, ill point it out for you
p dungeon['treasure_room'][2]
puts "enjoy the spoils"