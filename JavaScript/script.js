function afficherMerci(event)
{

    document.getElementById('contenu').innerHTML = '<h2> Merci pour votre commentaire ! </h2>';
}

fetch('http://localhost:8080/books')
.then(response => response.json())
.then(data => {
const books = data.books;
const booksContainer = document.getElementById('books-container');
books.forEach(book =>
    {
        const bookElement = document.createElement('div');
bookElement.innerHTML = `<h3>${book.title}</h3>
<p> Id auteur: ${book.author_id} </p>
<p> Date de publication: ${book.publication_date}</p>
<p> Description: ${book.description}</p>
<img src="${book.cover_image_url}" alt="${book.title}" style="width:100px;height:150px;">`

booksContainer.appendChild(book)
})



})