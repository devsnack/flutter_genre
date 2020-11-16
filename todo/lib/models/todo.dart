class Todo {
  var name;
  var isChecked;

  Todo({this.name, this.isChecked = false});

  toggleischecked() {
    isChecked = !isChecked;
  }
}
