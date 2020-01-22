


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


#     # testing Artsy API

# # require 'hyperclient'

# # xapp_token = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlcyI6IiIsInN1YmplY3RfYXBwbGljYXRpb24iOiI1ZTI3NGIyMjg2YTNiOTAwMTJkYWEyMDMiLCJleHAiOjE1ODAyNjA0MDIsImlhdCI6MTU3OTY1NTYwMiwiYXVkIjoiNWUyNzRiMjI4NmEzYjkwMDEyZGFhMjAzIiwiaXNzIjoiR3Jhdml0eSIsImp0aSI6IjVlMjdhMWIyMmZiM2ZmMDAxMzk1YzY3MyJ9.KREOqn6cDPOSOPnAAE-JP-nDGI9E54RZmNwfPYrfOKg'

# # api = Hyperclient.new('https://api.artsy.net/api/artworks/sample') do |api|
# #   api.headers['Accept'] = 'application/vnd.artsy-v2+json'
# #   api.headers['X-Xapp-Token'] = xapp_token
# #   api.connection(default: false) do |conn|
# #     conn.use FaradayMiddleware::FollowRedirects
# #     conn.use Faraday::Response::RaiseError
# #     conn.request :json
# #     conn.response :json, content_type: /\bjson$/
# #     conn.adapter :net_http
# #   end
# # end

# # all_artworks = api


# https://www.artsy.net/artwork/hieronymus-bosch-the-besieged-elephant


# TOKEN:

# eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlcyI6IiIsInN1YmplY3RfYXBwbGljYXRpb24iOiI1ZTI3NGIyMjg2YTNiOTAwMTJkYWEyMDMiLCJleHAiOjE1ODAyNjA0MDIsImlhdCI6MTU3OTY1NTYwMiwiYXVkIjoiNWUyNzRiMjI4NmEzYjkwMDEyZGFhMjAzIiwiaXNzIjoiR3Jhdml0eSIsImp0aSI6IjVlMjdhMWIyMmZiM2ZmMDAxMzk1YzY3MyJ9.KREOqn6cDPOSOPnAAE-JP-nDGI9E54RZmNwfPYrfOKg


# curl -v -X POST \
#   https://api.artsy.net/api/tokens/xapp_token \
#   -d client_id=[your client id] \
#   -d client_secret=[your client secret]



# REtrive current authenticated user_id

# curl -v "https://api.artsy.net/api/current_user" -H "X-Access-Token:eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlcyI6IiIsInN1YmplY3RfYXBwbGljYXRpb24iOiI1ZTI3NGIyMjg2YTNiOTAwMTJkYWEyMDMiLCJleHAiOjE1ODAyNjA0MDIsImlhdCI6MTU3OTY1NTYwMiwiYXVkIjoiNWUyNzRiMjI4NmEzYjkwMDEyZGFhMjAzIiwiaXNzIjoiR3Jhdml0eSIsImp0aSI6IjVlMjdhMWIyMmZiM2ZmMDAxMzk1YzY3MyJ9.KREOqn6cDPOSOPnAAE-JP-nDGI9E54RZmNwfPYrfOKg"

# curl -v "https://api.artsy.net/api/current_user" -H 'X-Xapp-Token:eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlcyI6IiIsInN1YmplY3RfYXBwbGljYXRpb24iOiI1ZTI3NGIyMjg2YTNiOTAwMTJkYWEyMDMiLCJleHAiOjE1ODAyNjA0MDIsImlhdCI6MTU3OTY1NTYwMiwiYXVkIjoiNWUyNzRiMjI4NmEzYjkwMDEyZGFhMjAzIiwiaXNzIjoiR3Jhdml0eSIsImp0aSI6IjVlMjdhMWIyMmZiM2ZmMDAxMzk1YzY3MyJ9.KREOqn6cDPOSOPnAAE-JP-nDGI9E54RZmNwfPYrfOKg'

# GET ONE PAINTING WITH ID

# curl -v -L curl -v https://api.artsy.net/api/artworks/516dfb9ab31e2b2270000c45 -H 'X-Xapp-Token:eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlcyI6IiIsInN1YmplY3RfYXBwbGljYXRpb24iOiI1ZTI3NGIyMjg2YTNiOTAwMTJkYWEyMDMiLCJleHAiOjE1ODAyNjA0MDIsImlhdCI6MTU3OTY1NTYwMiwiYXVkIjoiNWUyNzRiMjI4NmEzYjkwMDEyZGFhMjAzIiwiaXNzIjoiR3Jhdml0eSIsImp0aSI6IjVlMjdhMWIyMmZiM2ZmMDAxMzk1YzY3MyJ9.KREOqn6cDPOSOPnAAE-JP-nDGI9E54RZmNwfPYrfOKg'

# {"id":"516dfb9ab31e2b2270000c45","slug":"william-michael-harnett-the-old-violin","created_at":"2013-04-17T01:32:10+00:00","updated_at":"2019-04-24T13:01:45+00:00","title":"The Old Violin","category":"Painting","medium":"Oil on canvas","date":"1886","dimensions":{"in":{"text":"38 × 23 5/8 in","height":38.0,"width":23.625,"depth":null,"diameter":null},"cm":{"text":"96.5 × 60 cm","height":96.5,"width":60.0,"depth":null,"diameter":null}},"published":true,"website":"","signature":"","series":"","provenance":"","literature":"","exhibition_history":"","collecting_institution":"National Gallery of Art, Washington D.C.","additional_information":"\n    overall: 96.5 x 60 cm (38 x 23 5/8 in.)  framed: 119.7 x 84.1 x 5.1 cm (47 1/8 x 33 1/8 x 2 in.)\n    ","image_rights":"Courtesy National Gallery of Art, Washington","blurb":"","unique":false,"cultural_maker":null,"iconicity":25.245520919676473,"can_inquire":false,"can_acquire":false,"can_share":true,"sale_message":null,"sold":false,"image_versions":["large","large_rectangle","larger","medium","medium_rectangle","normalized","square","tall"],"_links":{"thumbnail":{"href":"https://d32dm0rphc51dk.cloudfront.net/dTGcd0Xx0aEp_MDFdHIUIw/medium.jpg"},"image":{"href":"https://d32dm0rphc51dk.cloudfront.net/dTGcd0Xx0aEp_MDFdHIUIw/{image_version}.jpg","templated":true},"partner":{"href":"https://api.artsy.net/api/partners/4f99c7b793ab4b0001000179"},"self":{"href":"https://api.artsy.net/api/artworks/516dfb9ab31e2b2270000c45"},"permalink":{"href":"https://www.artsy.net/artwork/william-michael-harnett-the-old-violin"},"genes":{"href":"https://api.artsy.net/api/genes?artwork_id=516dfb9ab31e2b2270000c45"},"artists":{"href":"https://api.artsy.net/api/artists?artwork_id=516dfb9ab31e2b2270000c45"},"similar_artworks":{"href":"https://api.artsy.net/api/artworks?similar_to_artwork_id=516dfb9ab31e2b2270000c45"},"collection_users":{"href":"https://api.artsy.net/api/users?collected_artwork_id=516dfb9ab31e2b2270000c45"}},"_embedded":{"editions":[]}}


# GET COLLECTION

# curl -v https://api.artsy.net/api/collections?user_id=5e274af586a3b90012daa1f7 -H 'X-Xapp-Token:eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlcyI6IiIsInN1YmplY3RfYXBwbGljYXRpb24iOiI1ZTI3NGIyMjg2YTNiOTAwMTJkYWEyMDMiLCJleHAiOjE1ODAyNjA0MDIsImlhdCI6MTU3OTY1NTYwMiwiYXVkIjoiNWUyNzRiMjI4NmEzYjkwMDEyZGFhMjAzIiwiaXNzIjoiR3Jhdml0eSIsImp0aSI6IjVlMjdhMWIyMmZiM2ZmMDAxMzk1YzY3MyJ9.KREOqn6cDPOSOPnAAE-JP-nDGI9E54RZmNwfPYrfOKg'

# curl -v -L curl -v https://api.artsy.net/api/collections?user_id=6823a01cacfc8eb52c8b -H 'X-Xapp-Token:eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlcyI6IiIsInN1YmplY3RfYXBwbGljYXRpb24iOiI1ZTI3NGIyMjg2YTNiOTAwMTJkYWEyMDMiLCJleHAiOjE1ODAyNjA0MDIsImlhdCI6MTU3OTY1NTYwMiwiYXVkIjoiNWUyNzRiMjI4NmEzYjkwMDEyZGFhMjAzIiwiaXNzIjoiR3Jhdml0eSIsImp0aSI6IjVlMjdhMWIyMmZiM2ZmMDAxMzk1YzY3MyJ9.KREOqn6cDPOSOPnAAE-JP-nDGI9E54RZmNwfPYrfOKg'


# # curl -v "https://api.artsy.net/api/artworks/516dfb9ab31e2b2270000c45" -H "X-XAPP-Token:eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlcyI6IiIsInN1YmplY3RfYXBwbGljYXRpb24iOiI1ZTI3NGIyMjg2YTNiOTAwMTJkYWEyMDMiLCJleHAiOjE1ODAyNjA0MDIsImlhdCI6MTU3OTY1NTYwMiwiYXVkIjoiNWUyNzRiMjI4NmEzYjkwMDEyZGFhMjAzIiwiaXNzIjoiR3Jhdml0eSIsImp0aSI6IjVlMjdhMWIyMmZiM2ZmMDAxMzk1YzY3MyJ9.KREOqn6cDPOSOPnAAE-JP-nDGI9E54RZmNwfPYrfOKg"

    