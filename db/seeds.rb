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
user1.save

category1 = Category.create(genre: "Horror")
category1.save

category2 = Category.create(genre: "Thriller")
category2.save

category3 = Category.create(genre: "Fiction")
category3.save

category4 = Category.create(genre: "Sci-Fi")
category4.save

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

story2 = Story.create(title: "Haunted", genre: "Thriller", content: "just said it was scary", synopsis: "Such a scary story", user_id: user1.id, category_id: category2.id)
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
