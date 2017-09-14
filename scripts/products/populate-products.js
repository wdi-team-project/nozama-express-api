// insert Document
db.products.insertMany(
  [
    {
      title: 'lizard',
      price: 23,
      imageLink: 'https://i.imgur.com/MaBYUjZ.jpg'
    },
    {
      title: 'kiwi',
      price: 900,
      imageLink: 'https://i.imgur.com/MaBYUjZ.jpg'
    }
  ]
)
