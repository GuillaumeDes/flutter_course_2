class Quote {
  String text;
  String author;

  Quote({String text, String author}){
    this.text = text;
    this.author = author;
  }
}

Quote myquote = Quote(text: 'this is the text', author: 'author test');