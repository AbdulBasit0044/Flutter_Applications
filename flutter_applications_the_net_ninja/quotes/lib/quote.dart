class Quote {

  String text;
  String author;

  Quote({String text, String author}){

    this.text = text;
    this.author = author;

  }

}

Quote myQuote = Quote(text: "This is a quote text",author: "Oscar Wilde");