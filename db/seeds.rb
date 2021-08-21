Seller.destroy_all 
Product.destroy_all 

Seller.reset_pk_sequence
Product.reset_pk_sequence

puts "destroying old data and reset ids"
puts "seeding started"

all_sellers = [
    {
        username: "Geddy",
        password: "abc123"
    }, 
    {
        username: "Mark",
        password: "abc123"
    }, 
    {
        username: "Ben",
        password: "abc123"
    }, 
    {
        username: "Barrett",
        password: "abc123"
    }, 
    {
        username: "Test",
        password: "abc123"
    }, 
    {
        username: "Chris",
        password: "abc123"
    }
]

all_sellers.each do |seller|
    Seller.create(seller)
end 


all_products = [
    {
        seller_id: Seller.all.sample.id,
        title: "Phil Jackson Rookie Card 1972 PSA 9", 
        product_type: "Memorabilia", 
        team: "Bulls", 
        image: "https://i.imgur.com/JWzJ70hl.png?1", 
        desc: "The G.O.A.T Coach!!! ",
        size: "na" ,
        price: 100
}, 
   
{ 
    seller_id: Seller.all.sample.id, 
    title:  "Michael Jordan Jumpman Card - Signed!",
    product_type: "Memorabilia", 
    team:  "Bulls",
    image: "https://i.imgur.com/0tLdRcDl.png",
    desc: "Mint and no damage to the card.", 
    size: "NA", 
    price: 575
},
{    
    seller_id: Seller.all.sample.id, 
    title:  "Classic Vince Carter Raptors Jersey 1997",
    product_type: "Jerseys", 
    team:  "Raptors",
    image: "https://i.imgur.com/G2Zp35xl.png",
    desc: "Throwback Vinsanity Jersey to freshen up your style!", 
    size: "Large", 
    price: 350
},
{
    seller_id: Seller.all.sample.id, 
    title:  "Dikembe Mutombo Denver Nuggets Jersey 1988",
    product_type: "Jerseys", 
    team:  "Nuggets",
    image: "https://i.imgur.com/OeqgK55l.png",
    desc: "Finger wag with style with this mint and original Dikembe Mutombo Jersey.", 
    size: "M", 
    price: 250
},
{   
    seller_id: Seller.all.sample.id, 
    title:  "Wilt Chamberlian Lakers Jersey 1970",
    product_type: "Jerseys", 
    team:  "Lakers",
    image: "https://i.imgur.com/V6aDHdUl.png",
    desc: "The jersey with all the memories! Must have for any Lakers fan", 
    size: "S", 
    price: 250
},



{
    seller_id: Seller.all.sample.id, 
    title:  "Baron Davis We Believe Jersey Special Edition",
    product_type: "Jerseys", 
    team:  "Warriors",
    image: "https://i.imgur.com/7ayio30l.png",
    desc: "Vintage Home Jersey!", 
    size: "M", 
    price: 250
},

{
    seller_id: Seller.all.sample.id, 
    title:  "Larry Bird Framed Autographed Jersey with PSA COA",
    product_type: "Memorabilia", 
    team:  "Celtics",
    image: "https://i.imgur.com/C7RUxj1l.png",
    desc: "Autograph has been authenticated by the best - PSA! So shop with confidence!", 
    size: "NA", 
    price: 500
},
{
    seller_id: Seller.all.sample.id,
    title: "James Harden Future Natural Solar Yellow" , 
    product_type: "Sneakers" , 
    team: "Rockets", 
    image: "https://i.imgur.com/q9Brmmol.png", 
    desc: "The ultimate kicks!",
    size: "9.5", 
    price: 150
},
{
    seller_id: Seller.all.sample.id, 
    title:  "Lebron James Christmas Edition Sneakers - Foamposite",
    product_type: "Sneakers", 
    team:  "Heat",
    image: "https://i.imgur.com/eG5hZpDl.png",
    desc: "One of the best Lebron colorways to ever drop! Must have! ", 
    size: "9", 
    price: 450
},

{    
    seller_id: Seller.all.sample.id, 
    title:  "Spud Webb Limited Edition Hawks Jersey",
    product_type: "Jerseys", 
    team:  "Hawks",
    image: "https://i.imgur.com/S23XnB8l.png",
    desc: "The jersey with all the memories! Must have for any Hawks fan", 
    size: "S", 
    price: 250
},
{ 
    seller_id: Seller.all.sample.id, 
    title:  "Larry Bird Converse Classic Signed with C.O.A",
    product_type: "Memorabilia", 
    team:  "celtics",
    image: "https://i.imgur.com/hnur5i2l.png",
    desc: "This is a very rare item! The box is in great condition!", 
    size: "S", 
    price: 300

},
{
    seller_id: Seller.all.sample.id, 
    title:  "Kobe Bryant Limited Edition Lakers Jersey",
    product_type: "Jerseys", 
    team: "Lakers" ,
    image: "https://i.imgur.com/A9tbq5cl.png",
    desc: "Lakers", 
    size: "M", 
    price: 300
},
{ 
    seller_id: Seller.all.sample.id, 
    title:  "Nike Kobe Bryant Elite 9 with tags",
    product_type: "Sneakers", 
    team:  "Lakers",
    image: "https://i.imgur.com/RJmC7bFl.png",
    desc: "One of the craziest colorways to release as a Kobe signature shoe. Make it yours today!" , 
    size: "10", 
    price: 400
},
{
    seller_id: Seller.all.sample.id,
    title: "The Human Highlight Jersey - Dominique Wilkins!" , 
    product_type: "Jersey" , 
    team: "Hawks", 
    image: "https://i.imgur.com/ammkzLnl.png", 
    desc: "Limited Edition",
    size: "L", 
    price: 170
},
{   
    seller_id: Seller.all.sample.id,
    title: "Nike Air Jordan Special Edition Eminem 313" , 
    product_type: "Sneakers" , 
    team: "Suns", 
    image: "https://i.imgur.com/qabJ4Iyl.png", 
    desc: "Nike Air Max CB 94 CZ7871-001, mint",
    size: "9.5", 
    price: 530
},  
{
    seller_id: Seller.all.sample.id,
    title: "Kevin Garnett Signed Card - Mint 33/50!" , 
    product_type: "Memorabilia" , 
    team: "Bulls", 
    image: "https://i.imgur.com/HfwPa71l.png", 
    desc: "Limited Edition 20/25",
    size: "na", 
    price: 300
},
{ 
    seller_id: Seller.all.sample.id, 
    title:  "Nike Kobe 9 Elite Green Mambas Limited Edition",
    product_type: "Sneakers", 
    team:  "Lakers",
    image: "https://i.imgur.com/ckNaWFel.png",
    desc:  "Kobe 9 Elite", 
    size: "10", 
    price: 1000
},
{ 
    seller_id: Seller.all.sample.id, 
    title:  "Shaquille O'Neal Orlando Magic Jersey",
    product_type: "Jerseys", 
    team:  "Magic",
    image: "https://i.imgur.com/wUcGhAhl.png",
    desc: "The Shaq we all know started from this jersey! Make it yours today!", 
    size: "XL", 
    price: 225
},
{
    seller_id: Seller.all.sample.id,
    title: "Moses Malone Authentic Jersey With Tags!", 
    product_type: "Jersey" , 
    team: "76ers", 
    image: "https://i.imgur.com/EMEpUbOl.png", 
    desc: "In mint condition!",
    size: "NA", 
    price: 200
},
{
    seller_id: Seller.all.sample.id, 
    title:  "The Dream Team Limited Edition Poster Mint",
    product_type: "Memorabilia", 
    team:  "Heat",
    image: "https://i.imgur.com/Y1YDP8Ql.jpg",
    desc: "The greatest team ever!", 
    size: "M", 
    price: 250
},
{
    seller_id: Seller.all.sample.id,
    title: "Julius Erving Royal 1976-77 Hardwood Classics" , 
    product_type: "Jersey" , 
    team: "76ers", 
    image: "https://i.imgur.com/AC8DmlXl.png", 
    desc: "Men's Philadelphia 76ers Julius Erving Mitchell & Ness Royal 1976-77 Hardwood Classics Swingman player_id Jersey",
    size: "Medium", 
    price: 160
},
{
    seller_id: Seller.all.sample.id,
    title: "Klay Thompson Special Edition Nike Jersey" , 
    product_type: "Jerseys" , 
    team: "Team USA", 
    image: "https://i.imgur.com/Res4XsHl.png", 
    desc: "Get this gem!!!!",
    size: "Medium", 
    price: 160
},
{
    seller_id: Seller.all.sample.id,
    title: "Kevin Durant Seattle Sonics Jersey 2005", 
    product_type: "Jerseys" , 
    team: "Sonics", 
    image: "https://i.imgur.com/AbjXrysl.png", 
    desc: "Seattle Supersonics Kevin Durant Hardwood Classics Road Swingman Jersey By Mitchell and Ness",
    size: "Large", 
    price: 220
},
{
    seller_id: Seller.all.sample.id,
    title: "Kevin Garnett Nike The Ticket 2007" , 
    product_type: "Sneakers" , 
    team: "Timberwolves", 
    image: "https://i.imgur.com/pQEvcdul.png", 
    desc: "Kevin Garnett Nike The Ticket 2007, near mint with box.",
    size: "9.5", 
    price: 120
},
{
    seller_id: Seller.all.sample.id,
    title: "94-95 Charles Barkley All Star Game Jersey" , 
    product_type: "Jerseys" , 
    team: "Suns", 
    image: "https://i.imgur.com/ikchVmSl.png", 
    desc: "94-95 Charles Barkley All Star Game Jersey, slightly worn, no stains.",
    size: "Small", 
    price: 110
},
{
    seller_id: Seller.all.sample.id,
    title: "Stephen Curry Signed The City Jersey", 
    product_type: "Memorabilia" , 
    team: "Warriors", 
    image: "https://i.imgur.com/Wpfxokbl.png", 
    desc: "Stephen Curry Signed The City Jersey, with certificate of authenticity",
    size: "Medium", 
    price: 350
},
{
    seller_id: Seller.all.sample.id,
    title: "James Harden Signed Rookie Card 88/100", 
    product_type: "Memorabilia" , 
    team: "OKC", 
    image: "https://i.imgur.com/etzVyonl.png", 
    desc: "In mint condition!",
    size: "NA", 
    price: 100
},
{   
    seller_id: Seller.all.sample.id, 
    title:  "SUPREME X AIR FOAMPOSITE ONE SP 'BLACK - Lil Penny",
    product_type: "Sneakers", 
    team:  "Bulls",
    image: "https://i.imgur.com/NGZBeaOl.png",
    desc: "Limited to 50!", 
    size: "11", 
    price: 1350
},
{
    seller_id: Seller.all.sample.id,
    title: "Nike Air More Uptempo Scottie Pippen" , 
    product_type: "Sneakers" , 
    team: "Bulls", 
    image: "https://i.imgur.com/vdwIBoRl.png", 
    desc: "Nike Air More Uptempo (Scottie Pippen) Black/White-Black Size 10, with box, mint",
    size: "10", 
    price: 150
},
{
    seller_id: Seller.all.sample.id,
    title: "Dwyane Wade Autographed Framed Jersey" , 
    product_type: "Memorabilia" , 
    team: "Heat", 
    image: "https://i.imgur.com/EQfdQ6zl.png", 
    desc: "Dwyane Wade Autographed Miami Heat (Black #3) Deluxe Framed Jersey with court background, with certificate of authenticity",
    size: "na",
    price: 500 
},
{
    seller_id: Seller.all.sample.id,
    title: "Dennis Rodman Signed 8 x 10 with C.O.A" , 
    product_type: "Memorabilia" , 
    team: "Bulls", 
    image: "https://i.imgur.com/o0OeGaHl.png", 
    desc: "Mint condition with certificate of authenticity",
    size: "na", 
    price: 250
},
{ 
    seller_id: Seller.all.sample.id, 
    title:  "Classic Scottie Pippen Bulls Swingman Jersey",
    product_type: "Jerseys", 
    team:  "Bulls",
    image: "https://i.imgur.com/ASlGlSKl.png",
    desc: "Throwback Vinsanity Jersey to freshen up your style!", 
    size: "Large", 
    price: 150
},
{
    seller_id: Seller.all.sample.id,
    title: "Nike Air Zoom Flight 95 - Jason Kidd" , 
    product_type: "Sneakers" , 
    team: "Nets", 
    image: "https://i.imgur.com/hGeVP0tl.png", 
    desc: "A classic!",
    size: "10", 
    price: 150
}
]

all_products.each do |product|
    Product.create(product)
end 

puts "Products have been made!"

