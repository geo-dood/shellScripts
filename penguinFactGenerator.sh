#!/bin/bash

# In honor of World Penguin Day, this is a script that will generate one of one-hundred random penguin facts.
# My apologies for any repeats - it was hard to source 100 completely different fun facts.

# Facts sourced from: 
# https://www.cabq.gov/artsculture/biopark/news/10-cool-facts-about-penguins
# https://www.chimuadventures.com/blog/2021/11/fun-facts-about-penguins/
# https://www.coolaustralia.org/fun-facts-about-penguins/
# https://www.goodhousekeeping.com/life/g19844807/penguin-facts/
# https://www.insider.com/penguins-things-you-never-knew-facts-2018-4
# https://eartheclipse.com/animals/penguin-facts-for-kids.html

# Author: George Maysack
# Inspired by https://bash.cyberciti.biz/guide/Chapter_4_answers

# Genarating a random number between 1 and 100, and storing it in a variable called mynum, which we will use to select a random quote from our array.
mynum=$(( $RANDOM%100+0 ))

# Message wishing user a happy world penguin day, which is stored in "motd" (Message Of The Day) variable
motd="\t Happy World Penguin Day!"

# Storing penguin facts in an array named "facts"
facts=( "1. A group of penguins in the water is called a raft, but on land they’re called a waddle. Other names for a group of penguins include rookery, colony, and huddle."
        "2. The black and white “tuxedo” look donned by most penguin species is a clever camouflage called countershading. When swimming, the black on their backs helps them blend in with the darkness of the ocean from predators viewing from above. Their white bellies help them blend in with the bright surface of the ocean when viewed by predators and prey from below."
        "3. Penguins may huddle together for several reasons. This behavior helps these birds protect themselves from predators. In frigid habitats, huddling helps penguins retain warmth."
        "4. Penguins evolved to fly underwater. Most birds have hollow, air-filled bones to help them stay light for flight. Penguins adapted with solid bones instead. This helps them swim because solid bones reduce buoyancy—the tendency to float."
        "5. A penguin’s thick feathers aren’t the only way this bird stays warm. A gland near the base of its tail provides waterproof oil. Penguins spend several hours each day covering their feathers with this oil and give extra attention to the task before swimming."
        "6. Penguins live in many locations and habitats.  You can find them in Antarctica and Antarctic islands, the Galapagos Islands off the coast of Ecuador, South Africa, New Zealand, Australia, Peru and Chile."
        "7. Contrary to many popular holiday cartoons, you’ll never see penguins and polar bears together in the wild. That’s because penguins live south of the equator while polar bears north of the equator in Arctic!"
        "8. Penguin feet are adapted to walk long distances. Some species of penguins can march up to about 60 miles across sea ice to get to their breeding grounds. Penguin feet are also adapted to help the birds steer while swimming. They use their feet like rudders, angling them to help control direction."
        "9. Many male penguins gift female penguins with rocks in order to woo them. The ladies use these rocks to build a nest."
        "10. According to some animal experts, the penguin is one of the most streamlined animals in the world. A penguin’s body is tapered at both ends and it has a large head, short neck and elongated body. This streamlined design helps penguins swim fast."
        "11. Penguin Sizes Range From 30cm – 1.3 meters. With an average height of around 30cm and weighing approximately 1.2 – 1.5kgs, little penguins (also known as fairy penguins or blue penguins) are the smallest member of the penguin family. Emperor penguins are the largest and heaviest living penguin, standing around 1.1 – 1.3m tall and weighing approximately 40kg at the start of the breeding season."
        "12. Giant Penguins Once Roamed the Earth. The ancestors of modern penguins may have been approximately 2m tall and weighed over 100kg! Fossils found in Antarctica suggest there were once giant penguins roaming the earth around 37 million years ago. Imagine running into one of these guys on an Antarctica cruise."
        "13. Penguins Have Many, Many Ways to Stay Warm. Penguins are renowned for their ability to endure some of the world’s harshest climates and coldest oceans. Their thick layers of feathers and extra reserves of body fat provide excellent insulation. Penguins also produce oil via the preen gland, which they carefully spread over their feathers to insulate their bodies and improve their speed through the water."
        "14. Penguins are Faithful Lovers. Many species of penguins, such as gentoos and rockhoppers, are known to partner up for life. Adelie penguins will return to the same spot to greet the same mate every breeding season. And female emperors can spot their mates in a crowded colony, via their unique calls, after months apart during the freezing Antarctic winter."
        "15. Penguins Closest Relatives are Phenomenal Flyers. Although penguins can’t fly, their closest living relatives are some of the best flyers in the world. Penguins are closely related to the flying superstars of the southern oceans, the giant petrel and the albatross. Both of these birds are exceptional long-distance flyers. The wandering albatross has the largest wingspan and the ability to fly up to 800km in a single day!"
        "16.There are 7 Species of Crested Penguins. The rock stars of the penguin world are characterized by their unique yellow plumes billowing from the tops of their heads. We think the macaroni is the coolest in both name and appearance of all the crested penguins, although the rockhopper may give it a run for its money."
        "17. Penguins Make Fantastic Fathers. Male penguins don’t mind shouldering a little responsibility when it comes to raising their young. All male penguins play an active role in looking after their young, but the father of the year award is definitely going to the emperor penguin.

Male emperors are renowned for taking the sole responsibility of keeping their precious eggs warm through the depths of winter in Antarctica. After laying the egg, the female penguin heads off to sea for around two months on a much-needed fishing trip. All the while, the male emperors protect their eggs from the freezing conditions, safely tucking the egg away in their brood pouch and huddling together for warmth."
        "18. Penguins Rear Their Chicks in a Creche. Many penguin species will form creches to help raise their young. When living in large colonies, it is advantageous for penguins to rear their chicks in the presence of multiple adults. This behaviour enables the parents to head off on fishing trips while simultaneously protecting the colony’s young from other aggressive adults or predators."
        "19. The Galapagos Penguin is the only penguin species that ventures north of the equator in the wild."
        "20. Large penguin populations can be found in countries such as New Zealand, Australia, Chile, Argentina and South Africa."
        "21. Penguins can drink sea water."
        "22. Penguins spend around half their time in water and the other half on land."
        "23. The Emperor Penguin is the tallest of all penguin species, reaching as tall as 120 cm (47 in) in height."
        "24. Emperor Penguins can stay underwater for around 20 minutes at a time."
        "25. King Penguins are the second largest penguin species. They have four layers of feathers to help keep them warm on the cold subantarctic islands where they breed."
        "26. Chinstrap Penguins get their name from the thin black band under their head. At times it looks like they’re wearing a black helmet, which might be useful as they’re considered the most aggressive type of penguin."
        "27. Crested penguins have yellow crests, as well as red bills and eyes."
        "28. Yellow eyed penguins (or Hoiho) are endangered penguins native to New Zealand. Their population is believed to be around 4000."
        "29. Little Blue Penguins are the smallest type of penguin, averaging around 33 cm (13 in) in height."
        "30. Penguins in Antarctica have no land based predators."
        "31. Scientists still don't know for sure how many kinds of penguin there are. Estimates usually fall in the range of 17 to 20, as there's still some debate over whether similar types of penguins (like rockhoppers) actually count as different species."
        "32. Penguins jump into the air before diving to swim faster. The move releases air bubbles from their feathers, cutting down on drag and doubling or tripling their speed underwater, according to Smithsonian. To make the leap back ashore, some smaller penguins can launch themselves 6 or 9 feet into the air by speedily swimming to the surface and bursting up over the ice shelf."
        "33.  Explorers first called penguins 'strange geese'. That's what crew member Antonio Pigafetta wrote on Ferdinand Magellan's first circumnavigation of the globe, Mental Floss reports. The birds he most likely spotted in the Falkland Islands now go by the name Magellanic penguins (Spheniscus magellanicus)."
        "34. Penguins can swim at speeds over 10 miles per hour. Gentoos, the speediest penguins, can top 20 mph, but most species dart around at a more modest 4 to 7 mph."
        "35. Penguins can dive down over 800 feet. In the deepest dive ever recorded by the Australian Antarctic Division, an emperor penguin reached an amazing 1,850 feet. Those huge depths require a great lung capacity; the longest-known dives have lasted 22 minutes!"
        "36. Penguins don't have teeth. Fleshy spines inside their mouths help them swallow fish. The protrusions face backward to help guide the catch down their throats."
        "37. Penguins go through a 'catastrophic molt' once a year. Penguins lose all of their feathers during the two- to three-week process, and can't swim or fish until the important insulation grows back."
        "38. Some penguin species mate for life. Gentoos, rockhoppers, and chinstraps especially remain monogamous. Adelie females can even find their old mates within minutes of arriving at the colony each season."
        "39. Couples locate each other with distinct calls. The unique sounds help them reunite on the breeding ground — a not-so-easy task when there are thousands of identical birds around."
        "40. Emperor penguins incubate eggs on their feet. The male penguins keep them warm under a loose fold of skin. They stay that way for months until the eggs hatch — not leaving even to eat!"
        "41. Pudgy penguins make good mates. Because of the intense fasting involved, the females often seek out chubbier guys who can go weeks without food as the ladies take a turn to hunt for fish."
        "42. Penguins are waterproof. They spread an oil produced by the preen gland that insulates their bodies and improves their hydrodynamics."
        "43. Penguins are total social butterflies. The largest penguin colonies — called rookeries or waddles when assembled on land — include hundreds of thousands of birds."
        "44. Scientists can find penguins using poop. The abundance of dark excrement (called guano) produced by large colonies allows researchers to see the groups from space! In 2018, the smelly giveaway just revealed a 1.5 million member 'super-colony' of Adelie penguins in the Danger Islands."
        "45. They're super friendly with people. Penguins' main predators (seals, sea lions, whales, and sharks) all reside in the water, so these birds feel much safer on land around researchers and tourists — for better or for worse."
        "46. Some penguins build pebble nests. Gentoo penguins' 'nests' look so ramshackle that ornithologists actually call them scrapes. The parents do line the pile of rocks with soft moss and feathers, though."
        "47. Little penguins tunnel holes in the sand dunes, typically a passageway leading to a 'nest bowl' just large enough to stand up in. The males and females take turns incubating the eggs and feeding the chicks until they reach about 8 or 9 weeks old."
        "48. Penguins get their name from a Canadian bird. The now-extinct giant auk looked like the funny black-and-white creatures explorers encountered in the Southern Hemisphere, so they used the scientific name Pinguinus impennis as inspiration."
        "49. Macaroni penguins were named for their fashion sense. You know the song 'Yankee Doodle?' In 18th-century England, a macaroni referred to an extremely stylish fellow. These little guys' spiky yellow crests definitely qualify."
        "50. Penguins love 'tobogganing.' Instead of shuffling across the ice, many penguins like to lay on their stomachs and propel themselves with their feet. It's often a faster way to get around."
        "51. Penguins started a movie fad. Entertainment Weekly named them one of the best things of the '00s thanks to popular flicks March of the Penguins, Happy Feet, and Surf’s Up — and that's not even including the scheming penguins of Madagascar that later nabbed their own spin-off."
        "52. Scientists estimate there are between 17 and 19 species of penguins. You'll find these flightless birds everywhere from Africa to Australia."
        "53. Crested penguins, such as the rockhopper and macaroni species — which are characterized by the yellow or orange tufts that extend from their heads — live in the sub-Antarctic region and Antarctic Peninsula. The temperate, less-feathery Magellanic and Humboldt species are native to South America."
        "54. Since the Galápagos Islands straddle the equator, some penguins on the archipelago live further north than any other species in the world."
        "55. The Galapagos penguin, is the only species that lives above the southern hemisphere."
        "56. Growing only to a height of 10 to 12 inches, blue penguins are also known as little penguins. They're native to Australia, New Zealand, and Tasmania."
        "57. Blue Penguins are the smallest species of penguin, only reaching a height of 10-12 inches."
        "58. Emperor penguins are the largest species of penguin. Native to Antarctica, they're characterized by their regal stature. They can grow upwards of 50 inches tall."
        "59. In 2014, scientists uncovered the 37-million-year-old remains of a 'colossus' or 'mega' penguin species on Seymour Island in the Antarctic Peninsula. Based on their findings, researchers estimated that the massive bird would have been 6.5 feet tall and would have weighed more than 250 pounds."
        "60. The majority of penguin species are monogamous. During mating season, one male penguin will pair off with one female penguin — but it's the female birds who compete for a mate."
        "61. Along with bears and flamingos, penguins are among the 1,500 animal species that practice same-sex coupling. At Wingham Wildlife Park in Kent, England, two male Humboldt penguins named Jumbs and Kermit raised a chick that the baby's father had refused to incubate. In New York City, Roy and Silo, a pair of chinstrap penguins at Central Park Zoo, incubated a fertile egg and reared the chick when she hatched."
        "62. While female emperor penguins go on a two-month hunting trip, the males protect and warm newly laid eggs by sheltering them in a sack of feathered skin called a brood pouch."
        "63. Although penguin eating habits vary by species and depend on factors such as geographic region and time of year, smaller southern penguins typically feed on krill and cephalopods like squid and cuttlefish. For African penguins, fish form the core of their diet."
        "64. Penguins are considered to be carnivores."
        "65. On average, penguins can reach underwater depths of 30 to 60 feet."
        "66. The world's oldest penguin is estimated to be an impressive 40 years old."
        "67. At Birdland, a wildlife park in Gloucestershire, England, you'll find the world's oldest penguin. Missy, a king penguin, is estimated to be an impressive 40 years old. In captivity, the maximum lifespan for the species is 41 years, versus 26 years in the wild."
        "68. Emperor penguins famously huddle to survive frigid Arctic winters. To ensure the birds in the middle of the group don't overheat, they move in a subtle, coordinated rotation every 30 to 60 seconds."
        "69. All penguin species, emperors have arteries in their legs that adjust blood flow in response to the temperature of their feet."
        "70. In a study published in 2013, scientists from Scotland and France illustrated that emperor penguins — the species with the highest feather density — stay warm by keeping their outer plumage at a lower temperature than the air around them. This helps them gain back heat through thermal convection (a process by which heat is transferred through a fluid medium such as air)."
        "71. Penguins can't fly, but they CAN become airborne. Some can leap as high as nine feet!"
        "72. Leaping in the air allows penguins to escape the clutches of would-be predators, including leopard seals and orcas. They rely on air bubbles, which they wrap around their bodies to propel themselves above the water, much like ships and torpedoes."
        "73. Pint-sized Adélie penguins, native to Antarctica, can leap up to nine feet in the air. In comparison, emperor penguins can jump around a foot and a half."
        "74. Species that reside in warmer climates, such as Galápagos and African penguins, have several methods for coping with hot temperatures. Both species stay cool by panting and also rely on genetic adaptations to beat the heat."
        "75. If you look closely, you'll notice that the Galapagos Penguins have a pink patch around their eyes. This patch contains a gland that helps them regulate body temperature. When it gets hotter outside, the penguins' bodies send more blood to the glands."
        "76. Galapagos Penguins molt twice per year, to replenish sun damaged feathers."
        "77. While most birds molt, penguins experience something called a 'catastrophic molt' when they grow new feathers. The word 'catastrophc' isn't as dire as it sounds — it refers to the fact that penguins lose all of their old feathers at once rather than gradually."
        "78. Five penguin species are classified as endangered. The five species classified as endangered on the IUCN Red List: the northern rockhopper penguin, the erect-crested penguin, the yellow-eyed penguin, the African penguin, and the Galápagos penguin. "
        "79. Less than 4,000 of the rarest kind of penguin exists today. Endemic to New Zealand, you'll find yellow-eyed penguins — one of the rarest species in the world — on the Pacific nation's South Island and sub-Antarctic islands. Compared to a population of about 7,000 penguins in 2000, there are now only 3,200 to 3,600 of the birds in the wild, The Guardian reported in November 2018."
        "80. Along with the Galápagos penguin, New Zealand's yellow-eyed penguin is one of the rarest species."
        "81. The world's oldest penguin fossil dates back 61 million years."
        "82. Scientists employ satellite imaging to measure penguin population size."
        "83. The term ‘penguin’ is a common name used to refer to 19 species of flightless seabirds which are widely distributed in cooler waters and along coastlines in the Southern Hemisphere. Penguins are flightless sea birds but they are expert swimmers."
        "84. The penguin seabirds have streamlined, barrel-like bodies which reduce drag on them while they swim. Their wings are modified to form thin, stiff flippers which provide propulsion (moving force) for them while swimming. Due to this endowment, most penguins can swim to depths of about 20 meters in search of food, while some have traveled as far as 30 meters!"
        "85. Smaller penguins live closer to the equator (for warmth) and eat only fish, the larger penguins live closer to the Antarctica where their bodies can withstand extremely low temperatures and windy weather. The larger penguins eat fishes, squids, and krills (krills are small, shrimp-like creatures)."
        "86. There are about 18 million macaroni penguins in the world. The Macaroni penguins have a lifespan of about 12 years. The closest penguin specie to Macaroni specie are the Royal penguin and the Erect-crested penguin."
        "87.  While most penguin species can hold their breath for 2 to 3 minutes underwater, but, the large and mighty Emperor penguin can hold its breath for up to 20 minutes under water!"
        "88. Virtually all activities are performed by penguins in groups! They are highly united in performing various activities important to them. Interestingly, large groups of penguins are called ‘rookery’. The rookery eat, swim, hunt and nest together."
        "89. World Penguin day is celebrated worldwide on the 25th day of April every year. Since the flightless birds resemble a tuxedo, lovers of penguins worldwide wear various shades of tuxedos to show love for the amazing species of flightless seabirds."
        "90. Common names for the 18 species of penguin are: Emperor penguin, King penguin, Southern rockhopper penguin, Macaronin penguin, Eastern rockhopper penguin (considered to be a sub-specie of the Southern rockhopper), Northern rockhopper penguin, Fiordland penguin, Snares penguin, Royal penguin, Erect-crested penguin, Little penguin (also known as ‘blue penguin’), Yellow-eyed penguin, Adele penguin, Chinstrap penguin, Gentoo penguin, Jackass penguin (also known as African penguin), Humboldt penguin, Magellanic penguin and Galapagos penguin."
        "91. Contrary to popular imagination, penguins do not only exist as the commonly expected black and white forms, but they also exist as very colorful birds of various sizes! For example, the Crested penguins sport a crown of yellow feathers; blushes of orange and yellow mark the necks of the Emperor and King penguins, while other species such as the Fiordland, Royal, Snares and Rockhopper penguins sport heads of bright yellow and bushy eyebrows. Also, a light yellow mask covers the face of the yellow-eyed penguin around the eyes."
        "92. Penguins eat only meats (That is, they are carnivores). Their diet includes squids, fishes, and krills (tiny crustaceans). Because they are mainly carnivorous, they could hamper the continuous supply of fishes and krills in the areas which they inhabit."
        "93. Penguins have very few natural predators. Major predators of these birds are: Petrels and Antarctic skuas."
        "94. Of all the penguin species, the largest is the Emperor specie. In the Antarctica where this specie lives, temperatures could drop as low as -60 degree Celsius. This makes the Emperor penguin the only animal to inhabit the open ice on the continent during the winter season. This penguin specie is able to survive the extreme coldness because of the large store of fat in its body."
        "95. Penguins are found in high concentrations in countries such as New Zealand, Chile, Australia, Argentina, and South Africa."
        "96. The penguin egg takes about 35 days to hatch. The baby penguin is called a chick. (The chick feeds on regurgitated food from its mother)."
        "97. The present global warming, climate change, and oil spills hurt all penguin’s species natural habitats."
        "98. Other common predators of penguins include: Seal leopards, Orcas, Sea lions, snakes sharks and foxes."
        "99. The King penguins are the second largest penguin specie. They possess about four layers of feathers to keep them warm on the cold sub-antarctic islands where they breed!"
        "100. Where did the Macaroni get its name from? The name comes from the crest of yellow feathers on its head. The crest on its head looks like the 18th-century hats of the same name (Macaroni)." )

# Display one of the random facts, with the "motd" below. 
echo 
echo ${facts[$mynum]}
echo
echo -e "$motd"
echo

# End of script
