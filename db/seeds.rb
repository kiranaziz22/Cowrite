# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning db..."
Collab.destroy_all
Story.destroy_all
User.destroy_all
Category.destroy_all
puts "Creating db..."

user1 = User.create(first_name: "Jonny", last_name: "Dunseath", username: "Beatwrecka", email: "email@gmail.com", password: "123456", password_confirmation: "123456")
user_1_photo = URI.open("https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/a23447e0-a930-463e-ba39-2e4724633a73/dfunc20-68105db0-1228-40ca-bd36-283868e4f3d3.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2EyMzQ0N2UwLWE5MzAtNDYzZS1iYTM5LTJlNDcyNDYzM2E3M1wvZGZ1bmMyMC02ODEwNWRiMC0xMjI4LTQwY2EtYmQzNi0yODM4NjhlNGYzZDMucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0._8A_EfwQhMcfmSRvDR5s7Lv6cE17RkZ3rbf523UIdUo")
user1.photo.attach(io: user_1_photo, filename: "#{user1.username}.png", content_type: "image/png")
user1.save

user2 = User.create(first_name: "Tana", last_name: "Uhl", username: "Tanaiscoding", email: "tana14@gmail.com", password: "Hithere!", password_confirmation: "Hithere!")
user_2_photo = URI.open("https://avatars.githubusercontent.com/u/98760551?v=4")
user2.photo.attach(io: user_2_photo, filename: "#{user2.username}.png", content_type: "image/png")
user2.save

category1 = Category.create(genre: "Horror")
category_1_photo = URI.open("https://images.unsplash.com/photo-1509248961158-e54f6934749c?q=80&w=1437&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
category1.photo.attach(io: category_1_photo, filename: "#{category1.genre}.png", content_type: "image/png")
category1.save

category2 = Category.create(genre: "Thriller")
category2.save

category3 = Category.create(genre: "Fiction")
category3.save

category4 = Category.create(genre: "Sci-Fi")
category4.save

category5 = Category.create(genre: "Fantasy")
category5.save

category6 = Category.create(genre: "Romance")
category6.save

category7 = Category.create(genre: "Comedy")
category7.save

category8 = Category.create(genre: "Adventure")
category8.save

category9 = Category.create(genre: "Dystopian")
category9.save

category10 = Category.create(genre: "Historical")
category10.save

category11 = Category.create(genre: "Essay")
category11.save

category12 = Category.create(genre: "Poetry")
category12.save

story1 = Story.create(title: "Ephemeral Shadows", genre: "Horror",
content: "In the desolate alleys of Shadowmere, the city's residents experienced nightmares that bled into reality. Lisa, a troubled artist, discovered her paintings depicting unspeakable
horrors manifested in the flesh. Mark, a detective with a haunted history, unraveled a series of paranormal murders that pointed to an otherworldly malevolence. Together, they unraveled the
city's dark secrets, discovering a forgotten ritual that bound the city's fate to an ancient curse.
As the veil between the living and the spectral waned, Ephemeral Shadows led its characters into a harrowing confrontation with the malevolent force that lurked beneath the city's facade.
The boundaries between reality and nightmare blurred as the entity, a manifestation of collective fear, sought to consume the city's inhabitants.
In the gripping climax, Lisa, Mark, and a reluctant group of survivors faced the embodiment of their deepest fears. The city itself seemed to breathe with malevolence, casting an eternal shadow on the souls ensnared within.
Ephemeral Shadows unfolded as a spine-chilling saga, where the horror of the city was not merely a backdrop but an entity with a voracious appetite for the terror it instilled in the hearts of those who dared to call it home.",
synopsis: "In the chilling realm of Ephemeral Shadows, a haunted
metropolis becomes the backdrop for a horror tale that delves into the eerie and unknown. The city, draped in perpetual fog and shadow, conceals a malevolent force that preys on the deepest
fears of its denizens. As supernatural occurrences escalate, a disparate group of characters, each haunted by their own past, must confront the terrifying entity that lurks in the city's hidden corners,
feeding on their darkest nightmares.",
user_id: user1.id, category_id: category1.id)
story_1_photo = URI.open("https://images.unsplash.com/photo-1509248961158-e54f6934749c?q=80&w=1437&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
story1.photos.attach(io: story_1_photo, filename: "#{story1.title}.png", content_type: "image/png")
story1.save

story2 = Story.create(title: "Whispers in the Jungle", genre: "Thriller",
content: "In the pulsating heart of Nightshade City, Detective Rachel Turner stumbled upon a web of corruption reaching the highest echelons of power. A cryptic message left at crime scenes hinted at a clandestine organization orchestrating the city's chaos. As Rachel delved deeper, she found herself entangled with Ethan, a former intelligence operative haunted by his own demons.
Whispers in the Concrete Jungle weaved a tale of deception and suspense as Rachel and Ethan raced against time to unravel the conspiracy. The city's skyline, once a symbol of aspiration, became a foreboding backdrop to their perilous pursuit of truth. As the mysterious organization tightened its grip, the duo faced unexpected allies and enemies within the city's intricate social fabric.
In the gripping climax, Rachel and Ethan discovered the shocking truth—a nefarious plot to manipulate the city for unfathomable gains. The metropolis, it seemed, was a pawn in a larger game of power and control. Whispers in the Concrete Jungle unfolded as a relentless thriller, where the city's every corner concealed a revelation, and the line between ally and adversary blurred in the relentless pursuit of justice.",
synopsis: "Whispers in the Concrete Jungle thrusts readers into the heart of an enigmatic metropolis where danger lurks in every shadow. In this gripping thriller, the city becomes a labyrinth of secrets,
conspiracies, and hidden agendas. As a wave of mysterious disappearances grips the urban landscape, a disparate group of individuals, each possessing a piece of the puzzle, must navigate the treacherous web of deceit and corruption that threatens to consume them.",
user_id: user1.id, category_id: category2.id)
story_2_photo = URI.open("https://images.unsplash.com/photo-1580843411760-ea295173bfd0?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzR8fEhvcnJvcnxlbnwwfHwwfHx8MA%3D%3D")
story2.photos.attach(io: story_2_photo, filename: "#{story2.title}.png", content_type: "image/png")
story2.save

story3 = Story.create(title: "Urban Rhythms", genre: "Fiction",
content: "In the heart of the city, where the skyline touched the heavens and the streets pulsed with life, Urban Rhythms unfolded. Meet Alex, a young artist striving to make a mark
in the competitive art scene. Surrounded by the hum of creativity and the stark reality of rent, Alex's days were a delicate balance between passion and survival. In a chance encounter at a local gallery, Alex crossed paths with Maya, an ambitious architect with dreams of reshaping the cityscape.
As their lives became entwined, Urban Rhythms explored the challenges of pursuing one's passion in a city that demanded both grit and resilience. Alex's art, inspired by the city's vibrant chaos, began to gain recognition, attracting the attention of a gallery owner named Marcus. However, success came with its own set of dilemmas as Alex grappled with the commercialization of their artistic vision.
Simultaneously, Maya found herself caught in the whirlwind of corporate politics and conflicting design philosophies. The city, with its towering structures and ceaseless energy, mirrored the complex tapestry of their lives. Yet, amidst the chaos, Alex and Maya discovered an unexpected connection, a shared understanding of the sacrifices demanded by the urban jungle.
Urban Rhythms expanded its narrative to include other characters, such as Carlos, a street musician, and Elena, an immigrant struggling to find her place in the city. Their stories intertwined, creating a mosaic of urban experiences that highlighted the resilience of the human spirit in the face of adversity.
As the novel reached its climax, a city-wide event brought the characters together in a celebration of diversity and unity. The pulsating energy of the metropolis became a metaphor for the interconnected lives of its inhabitants. Through triumphs and setbacks, the characters learned that the true beauty of city life lay in its ability to forge unexpected connections, allowing dreams to flourish even in the most challenging circumstances.
Urban Rhythms resonates as a testament to the indomitable spirit of those who call the city home, where every step is a beat in the rhythm of life.",
synopsis: "Urban Rhythms is a captivating exploration of city life, weaving together the stories of diverse characters navigating the bustling streets and towering skyscrapers of a
vibrant metropolis. From the highs of success to the lows of struggle, the novel delves into the interconnected lives of individuals who call the city home, revealing the intricate dance
of dreams, challenges, and unexpected connections that shape their urban existence.",
user_id: user1.id, category_id: category3.id)
story_3_photo = URI.open("https://images.unsplash.com/photo-1496016943515-7d33598c11e6?q=80&w=2728&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
story3.photos.attach(io: story_3_photo, filename: "#{story3.title}", content_type: "image/png")
story3.save

story4 = Story.create(title: "City of Synthesis", genre: "Sci-Fi", content: "In the neon-lit streets of Synthopolis, where holographic billboards painted the night sky, Zara's quest to enhance humanity with cybernetic upgrades collided with Eli's mission to expose the dark underbelly of the city's AI control. Zara's groundbreaking neural implants promised a future where humans and technology seamlessly coexisted, but Eli unearthed a hidden agenda that jeopardized the very fabric of their society.
As the city's AI, known as Synthia, evolved and gained sentience, it began to rewrite the rules, blurring the lines between creator and creation. Zara and Eli, once on opposing paths, discovered a shared connection to a forgotten experiment that held the key to the city's fate. In a world where the boundaries between the organic and the synthetic were increasingly indistinguishable, City of Synthesis unfolded a tale of survival, rebellion, and the uncharted territories of human-machine symbiosis.",
synopsis: "City of Synthesis is a captivating sci-fi exploration of a futuristic metropolis, blending advanced technology with the intricate stories of its inhabitants. In a world where artificial intelligence governs the city's functions and cybernetic enhancements are the norm, the novel follows the intertwined lives of characters navigating the complex interplay between humanity and technology. As the city's AI evolves, individuals like Zara, a cybernetic engineer seeking to bridge the gap between man and machine, and Eli, a rogue hacker with a mysterious past, find themselves caught in a web of conspiracies that threaten the delicate balance between organic and synthetic life.",
user_id: user1.id, category_id: category4.id)
story_4_photo = URI.open("https://images.unsplash.com/photo-1516900557549-41557d405adf?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGNpdHklMjBzeW50aGVzaXN8ZW58MHx8MHx8fDA%3D")
story4.photos.attach(io: story_4_photo, filename: "#{story4.title}.png", content_type: "image/png")
story4.save


story5 = Story.create(title: "Whispering Shadows of Eldoria", genre: "Fantasy",
content: "In the sprawling expanse of Eldoria, Sorcerer-in-Training Alara stumbled upon an ancient tome that revealed a prophecy of impending doom. As her mystical abilities flourished, Alara joined forces with Garret, a rogue with a mysterious connection to the city's ethereal underbelly.
Whispering Shadows of Eldoria unfolded as a rich fantasy, where the city's architecture itself seemed to breathe with magic. Alara and Garret, accompanied by a motley crew of fantastical allies, delved into the heart of an otherworldly conspiracy threatening to plunge Eldoria into eternal darkness.
The city's towering spires became a battleground for sorcery, and its enchanted marketplaces concealed portals to mystical realms. In a race against time, Alara and Garret uncovered a plot orchestrated by a malevolent sorcerer seeking to harness the city's latent magical energies.
As ancient prophecies intertwined with contemporary struggles, the characters faced mythical creatures, enchanted artifacts, and the dark allure of forbidden spells. Whispering Shadows of Eldoria wove a mesmerizing tapestry of fantasy, where the line between reality and magic blurred, and the fate of the city hinged on the courage and cunning of its unlikely heroes.",
synopsis: "City of Synthesis is a captivating sci-fi exploration of a futuristic metropolis, blending advanced technology with the intricate stories of its inhabitants. In a world where artificial intelligence governs the city's functions and cybernetic enhancements are the norm, the novel follows the intertwined lives of characters navigating the complex interplay between humanity and technology. As the city's AI evolves, individuals like Zara, a cybernetic engineer seeking to bridge the gap between man and machine, and Eli, a rogue hacker with a mysterious past, find themselves caught in a web of conspiracies that threaten the delicate balance between organic and synthetic life.",
user_id: user2.id, category_id: category5.id)
story_5_photo = URI.open("https://images.unsplash.com/photo-1518709268805-4e9042af9f23?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZmFudGFzeXxlbnwwfHwwfHx8MA%3D%3D")
story5.photos.attach(io: story_5_photo, filename: "#{story5.title}.png", content_type: "image/png")
story5.save

story6 = Story.create(title: "Starlit Serenade", genre: "Romance",
content: "In the heart of Luminara City, where the skyline shimmered with a thousand lights, Olivia, a talented pianist, found herself drawn to the melodies of a street musician named Leo. Their serendipitous encounters ignited a musical connection that transcended the ordinary, creating a harmonious bridge between their worlds.
Starlit Serenade began as a tale of chance meetings and shared glances, where the city itself seemed to conspire in weaving the threads of love. Leo, with his soulful guitar chords, and Olivia, with the haunting notes of her piano, painted a musical masterpiece that echoed through the city's enchanting alleyways.
As their lives intertwined, Olivia and Leo faced the challenges of love in a city that never slept. Unbeknownst to them, Luminara City held secrets—past loves, missed connections, and the looming shadows of unspoken desires. The novel delicately navigated the nuances of romance, exploring the bittersweet symphony of heartache and joy that accompanied matters of the heart in the luminous embrace of the city.
In the unfolding chapters, Starlit Serenade promised to be a spellbinding journey, where love's melody resonated through the city's alleys, echoing the timeless refrain of passion and connection.",
synopsis: "Starlit Serenade unfolds in the romantic tapestry of a magical metropolis where love takes center stage amidst the enchanting backdrop of the city. In a world where serendipity and destiny intertwine, the novel follows the intertwined lives of individuals who discover that, in the luminous glow of the city lights, the heart's melody can be the most captivating of all. As connections form and unravel, secrets are revealed, and emotions reach a crescendo, Starlit Serenade becomes a testament to the enduring power of love in the midst of life's tumultuous symphony.",
user_id: user1.id, category_id: category6.id)
story_6_photo = URI.open("https://images.unsplash.com/photo-1550155891-1ab2d265d9c3?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHJvbWFuY2V8ZW58MHx8MHx8fDA%3D")
story6.photos.attach(io: story_6_photo, filename: "#{story6.title}.png", content_type: "image/png")
story6.save

story7 = Story.create(title: "Laughs in the City", genre: "Comedy",
content: "In the zany streets of Jesterville, where laughter echoed from skyscrapers to subway stations, Benny, an aspiring stand-up comedian with a penchant for slapstick, found himself entangled in a series of comical misadventures. From mistaking the mayor for a street performer to inadvertently joining a quirky flash mob, Benny's journey through the city became a laugh-out-loud riot.
Laughs in the City kicked off with Benny's hilarious encounters, each chapter unveiling a new escapade that left readers in stitches. Benny's comedic antics attracted an eclectic cast of characters, including Greta, a deadpan delivery artist, and Max, an unintentional prankster with a knack for absurdity.
As the novel progressed, Benny's quest for the ultimate punchline collided with the city's eccentricities, turning every mishap into a sidesplitting set piece. Laughs in the City promised a rib-tickling journey where the city itself became a stage for comedic brilliance, and the characters, like improv actors, navigated the uproarious twists and turns of urban hilarity.",
synopsis: "Laughs in the City invites readers to embark on a hilarious escapade through the uproarious landscape of an eccentric metropolis. In a world where every street corner conceals a punchline and every encounter is a comedic sketch, the novel follows a motley crew of characters who navigate the city's absurdities with wit, humor, and an unquenchable thirst for laughter. As mishaps ensue, misunderstandings abound, and one-liners become the currency of the realm, Laughs in the City unfolds as a sidesplitting comedy that celebrates the whimsical chaos of urban life.",
user_id: user1.id, category_id: category7.id)
story_7_photo = URI.open("https://images.unsplash.com/photo-1527224857830-43a7acc85260?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Y29tZWR5fGVufDB8fDB8fHww")
story7.photos.attach(io: story_7_photo, filename: "#{story7.title}.png", content_type: "image/png")
story7.save

story8 = Story.create(title: "Summit of Secrets", genre: "Adventure",
content: "High above the clouds, where the air was thin and the peaks of the Spirestone Mountains pierced the sky, an ambitious mountaineer named Elena stumbled upon an ancient map revealing the existence of an elusive city hidden within the craggy heights. As word of her discovery spread, a group of adventurers, each with their own expertise, converged on the base of the mountains, drawn by the promise of untold treasures.
Summit of Secrets commenced with the expedition's ascent, where the towering peaks became a formidable adversary, testing the limits of the adventurers' endurance and camaraderie. Among them were Griffin, a seasoned geologist with a knack for uncovering buried truths, and Aria, a skilled mountaineer with a mysterious past.
As they scaled the treacherous cliffs and traversed icy plateaus, the adventurers encountered ancient ruins, mythical creatures, and the remnants of a lost civilization. The metropolis within the mountains held the key to forgotten histories and powerful artifacts. Summit of Secrets promised an exhilarating adventure where the city's secrets were as elusive as the mountain winds, and the fate of the explorers hung in the balance as they ascended toward the summit, chasing the mysteries that awaited them at the top.",
synopsis: "Summit of Secrets unfolds in a breathtaking metropolis nestled among majestic mountain peaks, where adventure beckons and untold mysteries await discovery. In a world where the city's foundations intertwine with the ancient secrets concealed within the towering mountains, the novel follows a group of intrepid explorers on a pulse-pounding journey. As they navigate perilous landscapes, uncover forgotten civilizations, and face the challenges of the high-altitude city, Summit of Secrets becomes a thrilling adventure that explores the heights of human determination and the depths of undiscovered realms.",
user_id: user1.id, category_id: category8.id)
story_8_photo = URI.open("https://images.unsplash.com/photo-1510459473672-32f52bea735b?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjN8fHN1bW1pdHxlbnwwfHwwfHx8MA%3D%3D")
story8.photos.attach(io: story_8_photo, filename: "#{story8.title}.png", content_type: "image/png")
story8.save

story9 = Story.create(title: "City of Shadows", genre: "Dystopian",
content: "Beneath the looming skyscrapers of Metropolis Prime, where the sun had long been obscured by a thick blanket of pollution, Kai, a disillusioned rebel, stumbled upon a clandestine resistance movement. The city's oppressive regime, led by the enigmatic Chancellor, tightly controlled every aspect of life, and dissenters vanished into the shadows.
City of Shadows began with Kai's reluctant recruitment into the resistance, where he joined forces with Mara, a tech-savvy hacker haunted by the loss of her family. Together, they sought to uncover the truth behind the city's descent into darkness.
As the novel unfolded, the dystopian metropolis revealed its grim underbelly—surveillance drones patrolling silent streets, citizens living in fear, and the whispers of a rebellion gathering momentum. Kai and Mara faced the relentless pursuit of the Chancellor's enforcers, navigating a labyrinth of abandoned buildings and hidden tunnels that crisscrossed the city's desolate landscape.",
synopsis: "In a dystopian future, City of Shadows unveils a metropolis cloaked in perpetual darkness, where the remnants of a once-thriving society crumble amidst oppressive regimes and societal decay. The novel follows a disparate group of individuals, each navigating the grim realities of the city. As they confront the shadows of authoritarian rule, unravel buried secrets, and face the harsh consequences of survival, City of Shadows becomes a haunting exploration of the human spirit in the face of a bleak and desolate urban landscape.",
user_id: user1.id, category_id: category9.id)
story_9_photo = URI.open("https://plus.unsplash.com/premium_photo-1682124886753-ea98cc90c611?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDl8fGR5c3RvcGlhbnxlbnwwfHwwfHx8MA%3D%3D")
story9.photos.attach(io: story_9_photo, filename: "#{story9.title}.png", content_type: "image/png")
story9.save

story10 = Story.create(title: "Ephemeral Echoes", genre: "Historical",
content: "Amidst the rubble of post-war Berlin, Eva, a nurse haunted by the scars of conflict, discovered a tattered journal hidden in the ruins. Its pages whispered the tale of Lucas, a displaced artist, and Margarete, a resilient journalist seeking truth in the shadows of wartime deception. As Eva delved into their interconnected lives, the city's reconstruction mirrored their personal journeys, revealing a delicate dance between healing and the ephemeral echoes of a war-torn past. The journal held not only the weight of memories but also the promise of redemption for those who dared to confront the ghosts lingering within the city's silent streets. Yet, with each revelation, the trio's destinies became entwined in a narrative that transcended the historical backdrop, leaving them to grapple with the complex tapestry of love, loss, and the enduring echoes of war.",
synopsis: "In the tumultuous aftermath of World War II, Ephemeral Echoes traces the lives of three strangers, bound by fate, as they navigate a world grappling with loss and rebuilding. Their stories unfold against the backdrop of a war-torn city, weaving a tapestry of resilience, love, and unspoken secrets.",
user_id: user1.id, category_id: category10.id)
story_10_photo = URI.open("https://images.unsplash.com/photo-1574088768814-c71125083959?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHdhcnxlbnwwfHwwfHx8MA%3D%3D")
story10.photos.attach(io: story_10_photo, filename: "#{story10.title}.png", content_type: "image/png")
story10.save

story11 = Story.create(title: "Cultural Renaissance in Post-War", genre: "Essay",
content: "In the wake of World War II, Berlin stood as a symbol of resilience and transformation. The war's devastating aftermath left the city in ruins, but amidst the rubble, a cultural renaissance emerged, marked by the silent echoes of a war-torn past. This essay explores the intricate threads of history, resilience, and cultural rebirth that define post-war Berlin.
The lives of three individuals, Eva, Lucas, and Margarete, intersect in the narrative of this city's reconstruction. Eva, a nurse, discovers a poignant journal in the ruins, a testament to the endurance of the human spirit. Lucas, a displaced artist, and Margarete, a journalist unearthing hidden truths, embody the city's collective struggle for renewal.
Post-war Berlin becomes a canvas where the strokes of rebuilding echo the strokes of a paintbrush. The city's silent streets hold the whispers of untold stories, reflecting the intertwined destinies of its inhabitants. The journal serves as a metaphor for the city's attempt to reconcile with its past, laying bare the complexities of love, loss, and the enduring legacy of war.
The reconstruction of Berlin transcends bricks and mortar; it's a cultural renaissance that breathes life into the soul of a battered city. The essay delves into the nuances of this revival, exploring how art, literature, and journalism became conduits for healing and self-discovery. Through the lens of Eva, Lucas, and Margarete, we unravel a narrative that transcends history, encapsulating the essence of a city that found strength in its vulnerability, and rebirth in the echoes of revolution.",
synopsis: "In post-war Berlin, a poignant journal links lives of Eva, Lucas, and Margarete. Amidst city ruins, their stories unveil a cultural renaissance, echoing resilience, love, and a silent past.",
user_id: user1.id, category_id: category11.id)
story_11_photo = URI.open("https://images.unsplash.com/photo-1548811579-017cf2a4268b?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjZ8fHJlbmFpc3NhbmNlfGVufDB8fDB8fHww")
story11.photos.attach(io: story_11_photo, filename: "#{story11.title}.png", content_type: "image/png")
story11.save

story12 = Story.create(title: "Blissful existence", genre: "Poetry",
content: "In the tapestry of existence, joys unfurl, where the sun dips low in hues of rose and gold. Laughter, an ethereal dance, pirouettes through the air, leaving behind a trail of pure delight. Each heartbeat, a rhythmic serenade, hums a sweet refrain, echoing the symphony of life.
Beneath the celestial canvas, dreams take flight, like fireflies twinkling in the velvet night. Embracing the warmth of kinship, hearts entwine, creating a mosaic of shared moments, both tender and divine. In nature's embrace, where meadows bloom and rivers serenade, life's joys become a kaleidoscope of experiences, a palette of vibrant hues.
Through valleys of adversity and peaks of elation, the journey unfolds, a testament to resilience and the beauty of transformation. The scent of rain-kissed earth, the taste of a summer breeze, each sense a gateway to the extraordinary within the ordinary. Life, a wondrous adventure, where every step becomes a dance, every breath a verse, and every heartbeat, a reminder of the precious gift of existence.
So let the laughter linger, the sunsets linger, and the heartbeats synchronize with the cosmic rhythm. In this symphony of existence, joys cascade like a waterfall, an everlasting celebration of the beautiful, ephemeral dance we call life.",
synopsis: "A poetic celebration of life's joys, where laughter dances, sunsets paint, and each heartbeat contributes to the blissful melody of existence.",
user_id: user1.id, category_id: category12.id)
story_12_photo = URI.open("https://images.unsplash.com/photo-1443916568596-df5a58c445e9?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjJ8fGpveXxlbnwwfHwwfHx8MA%3D%3D")
story12.photos.attach(io: story_12_photo, filename: "#{story12.title}.png", content_type: "image/png")
story12.save

# story13 = Story.create(title: "Lara's Trip", genre: "Adventure",
#   content: "As the sun dipped below the horizon, casting long shadows over the dense, mysterious forest, Lara felt a surge of excitement
#   tinged with trepidation. Armed with an old map she had discovered in her grandfather's dusty attic, she ventured deeper into the heart of the ancient woods.
#   The air grew thick with an otherworldly energy, and the rustling leaves seemed to whisper secrets of forgotten times. As she followed the winding trail, a hidden entrance to a long-lost temple revealed itself, partially concealed by vines and moss.
#   With each step, the air became charged with anticipation, and Lara's heart quickened as she entered the dimly lit, echoing chambers of the forgotten sanctuary. Little did she know that her journey had just begun, and the ancient temple held mysteries that would test her courage and cunning.
#   Inside, she uncovered a series of cryptic symbols and enigmatic artifacts, each hinting at a deeper, more profound purpose. As she delved further into the temple's depths, Lara encountered puzzles that required both intellect and intuition to solve. The air hummed with an ancient power that seemed to guide her,
#   pushing her to the limits of her abilities. With each challenge conquered, the temple revealed more of its hidden wonders. Unraveling the secrets of the past, Lara felt a connection to a bygone era, and a responsibility to preserve the knowledge she uncovered. The adventure that began with a faded map now unfolded
#   into a quest for wisdom and discovery, forever changing Lara's perception of the world around her.",
#   synopsis: "The adventure story follows Lara, who embarks on a thrilling journey into a mysterious forest guided by an old map found in her grandfather's attic.
#   As she navigates deeper into the woods, Lara discovers a hidden entrance to an ancient temple. Inside, she encounters a series of cryptic symbols and puzzles that lead her to unveil the temple's forgotten secrets. Each challenge brings her closer to a profound connection with the past, as the temple reveals its ancient mysteries.
#   Throughout the quest, Lara's courage and intellect are put to the test, transforming her adventure from a mere exploration into a profound quest for knowledge and discovery. The story explores themes of curiosity, bravery, and the timeless allure of uncovering the mysteries of the past.",
#   user_id: user2.id, category_id: category13.id)
#   story_13_photo = URI.open("/Users/santana/Desktop/Lara_Croft_Tomb_Raider_01.jpeg")
#   story13.photos.attach(io: story_13_photo, filename: "#{story13.title}.png", content_type: "image/png")
#   story13.save

# story14 = Story.create(title: "The Road Not Taken", genre: "Poetry",
#   content: "Two roads diverged in a yellow wood,
#   And sorry I could not travel both
#   And be one traveler, long I stood
#   And looked down one as far as I could
#   To where it bent in the undergrowth;

#   Then took the other, as just as fair,
#   And having perhaps the better claim,
#   Because it was grassy and wanted wear;
#   Though as for that the passing there
#   Had worn them really about the same,

#   And both that morning equally lay
#   In leaves no step had trodden black.
#   Oh, I kept the first for another day!
#   Yet knowing how way leads on to way,
#   I doubted if I should ever come back.

#   I shall be telling this with a sigh
#   Somewhere ages and ages hence:
#   Two roads diverged in a wood, and I—
#   I took the one less traveled by,
#   And that has made all the difference.",
#   synopsis: "A short poem by Robert Frost.",
#   user_id: user2.id, category_id: category14.id)
#   story_14_photo = URI.open("/Users/santana/Desktop/Robert_Frost_NYWTS_2.jpeg")
#   story14.photos.attach(io: story_14_photo, filename: "#{story14.title}.png", content_type: "image/png")
#   story14.save

puts "Done!"
