class MyPost {
  final DateTime createdOn;
  final String title,body;
  
  MyPost({this.createdOn,this.title,this.body}){}
  
  factory MyPost.fromJson(Map<String,dynamic> data){
    String dateStr = data["created_on"] ?? "";
    var created = DateTime.tryParse(dateStr); 
    // can be null if the string is empty, 
    //so use ?? when accessing this field for display
    return MyPost(createdOn :  created,title : data["title"] ?? "(none)",body : data["body"] ?? "(none)");
  }
}
