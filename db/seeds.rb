# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)





    artwork = Artwork.create([
        {image: 'https://d32dm0rphc51dk.cloudfront.net/8w7iHO5Thliy9N2vQ6mKTw/large.jpg', title: 'MyMy', artist_name: 'Otto Piene', price: 36500}, 
        {image: 'https://i.pinimg.com/236x/2b/40/1b/2b401b960349c984a3e82f2e894f73d0--barbara-hepworth-.jpg', title: 'Rangatira I', artist_name: 'Barbara Hepworth', price: 7500},
        {image: 'https://d32dm0rphc51dk.cloudfront.net/zZ4vo_sZXllioWwrCU8NfQ/large.jpg', title: 'Secret Thoughts', artist_name: ' Tony Cragg', price: 45000}
        ])

    gallery = Gallery.create([
        {name: 'Gagosian', image: 'https://media.timeout.com/images/100750427/1372/1029/image.jpg'},
        {name: 'Fergus McCaffrey', image: 'https://media.timeout.com/images/105362818/1372/1029/image.jpg'},
        {name: 'David Zwirner Gallery', image: 'https://media.timeout.com/images/103941872/1372/1029/image.jpg'},
        {name: 'Pace Gallery', image: 'https://media.timeout.com/images/103941899/1372/1029/image.jpg'}
    ])