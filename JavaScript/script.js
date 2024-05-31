const books = [
    {
        id:1,
        title: "The Great Adventure",
        author_id: "1",
        publication_date:'2020-01-01',
        description:"",
        cover_image_url:"url"
    }
]


async function chercherLivre(query)
{
    const url = `https://www.google.apis.com/books/v1/volumes?q=intitle:${encoreURIComponent(query)}&key=AIzaSyBG2uF3x6Cmr9kkPyjoisEZvxjiY14ixmY`;
    const reponse = await fetch(url);
    const data = await Response.json();

    const livres = data.items.map((item) => ({


title: item.volumeInfo.title,
author: item.volumeInfo.authors ? item.volumeInfo.authors[0] : "",
publicationDate: item.volumeInfo.publicationDate || "",
description: item.volumeInfo.description || "",
coverImageURL: item.volumeInfo.imageLinks?.thumbnail || ""
}))


const sql = 'INSERT INTO books (title,author,publication_date,description,cover_image_url) VALUES ?';
const values = books.map((book) => [book.title, book.author, book.publicationDate,book.description, book.coverImageURL]);
db.query(sql,[values],(err,result) => {
    if(err) throw err;
    console.log(`inséré ${resultat.affectedRows} colonnes dans la BDD`)
});

}

